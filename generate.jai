#import "Bindings_Generator";
#import "Basic";
#import "File";
#import "String";
#import "BuildCpp";
#import "File_Utilities";
#import "Hash_Table";

#run {
    using opts: Generate_Bindings_Options;
    
    #if OS == .WINDOWS {
        array_add(*libpaths, "bin/win");
        array_add(*libnames, "GameNetworkingSockets");
        array_add(*libnames, "abseil_dll");
        array_add(*libnames, "libprotobuf");
        array_add(*libnames, "libcrypto-3-x64");

        array_add(*extra_clang_arguments, "-DBUILD_SHARED_LIB=ON", "-DBUILD_STATIC_LIB=OFF");
        array_add(*extra_clang_arguments, "-DSTEAMNETWORKINGSOCKETS_FOREXPORT", "-DSTEAMNETWORKINGSOCKETS_STANDALONELIB", "-DSTEAMNETWORKINGSOCKETS_OPENSOURCE");

        // array_add(*include_paths, "physx/physx-sys/src/generated/x86_64-pc-windows-msvc/");
        // array_add(*system_include_paths, "\"C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/Llvm/lib/clang/17/include\"");
    } else #if OS == .LINUX {
        array_add(*libpaths, "bin/linux");
        array_add(*libnames, "libGameNetworkingSockets");

        // array_add(*extra_clang_arguments, "-D__clang__");
        // array_add(*extra_clang_arguments, "-std=c++14");

        // array_add(*include_paths, "physx/physx-sys/src/generated/unix/");
        // array_add(*system_include_paths, "/usr/lib/llvm-18/lib/clang/18/include");
        // array_add(*system_include_paths, "/usr/include/c++/14");
    } else #if OS == .MACOS {
        array_add(*libpaths, "bin/osx");
        array_add(*libnames, "GameNetworkingSockets");
    }


    array_add(*extra_clang_arguments, "-x", "c++");
    array_add(*include_paths, "GameNetworkingSockets/include");

    // array_add(*source_files, "GameNetworkingSockets/include/steam/steamnetworkingsockets_flat.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/isteamnetworkingmessages.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/isteamnetworkingsockets.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/isteamnetworkingutils.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steam_api_common.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamclientpublic.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamnetworkingcustomsignaling.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamnetworkingsockets_flat.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamnetworkingsockets.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamnetworkingtypes.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamtypes.h");
    array_add(*source_files, "GameNetworkingSockets/include/steam/steamuniverse.h");

    generate_compile_time_struct_checks = true;
    generate_c_style_api_for_vtable = false;
    generate_vtable_helpers = false;
    
    opts.visitor = (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
        decl_filename: string;
        if decl && decl.location.file {
            decl_filename_clang := clang_getFileName(decl.location.file);
            defer clang_disposeString(decl_filename_clang);
            decl_filename = to_lower_copy_new(to_string(clang_getCString(decl_filename_clang)),, temp);
        }

        parent_decl_filename: string;
        if parent_decl && parent_decl.location.file {
            parent_decl_filename_clang := clang_getFileName(parent_decl.location.file);
            defer clang_disposeString(parent_decl_filename_clang);
            parent_decl_filename = to_lower_copy_new(to_string(clang_getCString(parent_decl_filename_clang)),, temp);
        }

        valid_binding := ends_with(decl_filename, "steamnetworkingsockets_flat.h");
        valid_binding = valid_binding || (decl.kind == .ENUM && decl.parent == null);
        valid_binding = valid_binding || (decl.kind == .FUNCTION && decl.parent == null);

        // it doesn't seem to output constants like k_HSteamNetPollGroup_Invalid although I don't know why... just because they're const?

        if !valid_binding {
            if !table_contains(*visited_decl_values, decl) {
                table_set(*old_decl_values, decl, decl.decl_flags);
                decl.decl_flags = .OMIT_FROM_OUTPUT;
            }
        } else {
            readd_declarations_recusive(decl);
        }

        return .RECURSE;
    };

    #if OS == .WINDOWS {
        generate_bindings(opts, "module_windows.jai");
    } else #if OS == .LINUX {
        generate_bindings(opts, "module_linux.jai");
    } else #if OS == .MACOS {
        generate_bindings(opts, "module_macos.jai");
    }
}

// invalid_struct_parameters :: string.[
//     // bit fields....
//     "m_unAccountInstance",
//     "",
// ];

readd_ctype_recusive :: (type: *CType) {
    if type.pointer_to {
        readd_ctype_recusive(type.pointer_to);
    }
    if type.type_of_enum {
        readd_declarations_recusive(type.type_of_enum);
    }
    if type.type_of_typedef {
        readd_declarations_recusive(type.type_of_typedef);
    }
    if type.type_of_struct {
        readd_declarations_recusive(type.type_of_struct);
    }
    if type.array_element_type {
        readd_ctype_recusive(type.array_element_type);
    }
    if type.type_of_function {
        for argument: type.type_of_function.arguments {
            readd_declarations_recusive(argument);
        }
        readd_ctype_recusive(type.type_of_function.return_type);
    }
}

readd_declarations_recusive :: (decl: *Declaration) {
    if table_contains(*visited_decl_values, decl) {
        return;
    }
    table_set(*visited_decl_values, decl, true);

    flags, found := table_find(*old_decl_values, decl);
    if found {
        decl.decl_flags = flags;
    }

    if decl.type {
        readd_ctype_recusive(decl.type);
    }
    
    if #complete decl.kind == {
        case .NONE;
        case .DECLARATION;
        case .FUNCTION;
        case .ENUM;
        case .TYPEDEF;
        case .STRUCT;
            struct_decl := cast(*Struct) decl;
            for metadata: struct_decl.metadata {
                readd_declarations_recusive(metadata);
            }
            for parents: struct_decl.parents {
                readd_declarations_recusive(parents);
            }
            for virtual_functions: struct_decl.virtual_functions {
                // readd_declarations_recusive(virtual_functions);
            }
            for declarations: struct_decl.declarations {
                readd_declarations_recusive(declarations);
            }
            for template_type_params: struct_decl.template_type_params {
                readd_declarations_recusive(template_type_params);
            }

        case .NAMESPACE;
            namespace_decl := cast(*Namespace) decl;
            for declaration: namespace_decl.declarations {
                readd_declarations_recusive(declaration);
            }

        case .MACRO_DEFINITION;
        case .LITERAL;
        case .UNARY_OPERATOR;
        case .BINARY_OPERATOR;
        case .STRUCT_LITERAL;
        case .PAREN_EXPRESSION;
    }
}

visited_decl_values: Table(*Declaration, bool);
old_decl_values: Table(*Declaration, Declaration_Flags);
