//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



uint8 :: u8;

uint16 :: u16;
int32 :: s32;
uint32 :: u32;
int64 :: s64;
uint64 :: u64;

// General result codes
EResult :: enum u32 {
    k_EResultNone                                    :: 0;
    k_EResultOK                                      :: 1;
    k_EResultFail                                    :: 2;
    k_EResultNoConnection                            :: 3;

    k_EResultInvalidPassword                         :: 5;
    k_EResultLoggedInElsewhere                       :: 6;
    k_EResultInvalidProtocolVer                      :: 7;
    k_EResultInvalidParam                            :: 8;
    k_EResultFileNotFound                            :: 9;
    k_EResultBusy                                    :: 10;
    k_EResultInvalidState                            :: 11;
    k_EResultInvalidName                             :: 12;
    k_EResultInvalidEmail                            :: 13;
    k_EResultDuplicateName                           :: 14;
    k_EResultAccessDenied                            :: 15;
    k_EResultTimeout                                 :: 16;
    k_EResultBanned                                  :: 17;
    k_EResultAccountNotFound                         :: 18;
    k_EResultInvalidSteamID                          :: 19;
    k_EResultServiceUnavailable                      :: 20;
    k_EResultNotLoggedOn                             :: 21;
    k_EResultPending                                 :: 22;
    k_EResultEncryptionFailure                       :: 23;
    k_EResultInsufficientPrivilege                   :: 24;
    k_EResultLimitExceeded                           :: 25;
    k_EResultRevoked                                 :: 26;
    k_EResultExpired                                 :: 27;
    k_EResultAlreadyRedeemed                         :: 28;
    k_EResultDuplicateRequest                        :: 29;
    k_EResultAlreadyOwned                            :: 30;
    k_EResultIPNotFound                              :: 31;
    k_EResultPersistFailed                           :: 32;
    k_EResultLockingFailed                           :: 33;
    k_EResultLogonSessionReplaced                    :: 34;
    k_EResultConnectFailed                           :: 35;
    k_EResultHandshakeFailed                         :: 36;
    k_EResultIOFailure                               :: 37;
    k_EResultRemoteDisconnect                        :: 38;
    k_EResultShoppingCartNotFound                    :: 39;
    k_EResultBlocked                                 :: 40;
    k_EResultIgnored                                 :: 41;
    k_EResultNoMatch                                 :: 42;
    k_EResultAccountDisabled                         :: 43;
    k_EResultServiceReadOnly                         :: 44;
    k_EResultAccountNotFeatured                      :: 45;
    k_EResultAdministratorOK                         :: 46;
    k_EResultContentVersion                          :: 47;
    k_EResultTryAnotherCM                            :: 48;
    k_EResultPasswordRequiredToKickSession           :: 49;
    k_EResultAlreadyLoggedInElsewhere                :: 50;
    k_EResultSuspended                               :: 51;
    k_EResultCancelled                               :: 52;
    k_EResultDataCorruption                          :: 53;
    k_EResultDiskFull                                :: 54;
    k_EResultRemoteCallFailed                        :: 55;
    k_EResultPasswordUnset                           :: 56;
    k_EResultExternalAccountUnlinked                 :: 57;
    k_EResultPSNTicketInvalid                        :: 58;
    k_EResultExternalAccountAlreadyLinked            :: 59;
    k_EResultRemoteFileConflict                      :: 60;
    k_EResultIllegalPassword                         :: 61;
    k_EResultSameAsPreviousValue                     :: 62;
    k_EResultAccountLogonDenied                      :: 63;
    k_EResultCannotUseOldPassword                    :: 64;
    k_EResultInvalidLoginAuthCode                    :: 65;
    k_EResultAccountLogonDeniedNoMail                :: 66;
    k_EResultHardwareNotCapableOfIPT                 :: 67;
    k_EResultIPTInitError                            :: 68;
    k_EResultParentalControlRestricted               :: 69;
    k_EResultFacebookQueryError                      :: 70;
    k_EResultExpiredLoginAuthCode                    :: 71;
    k_EResultIPLoginRestrictionFailed                :: 72;
    k_EResultAccountLockedDown                       :: 73;
    k_EResultAccountLogonDeniedVerifiedEmailRequired :: 74;
    k_EResultNoMatchingURL                           :: 75;
    k_EResultBadResponse                             :: 76;
    k_EResultRequirePasswordReEntry                  :: 77;
    k_EResultValueOutOfRange                         :: 78;
    k_EResultUnexpectedError                         :: 79;
    k_EResultDisabled                                :: 80;
    k_EResultInvalidCEGSubmission                    :: 81;
    k_EResultRestrictedDevice                        :: 82;
    k_EResultRegionLocked                            :: 83;
    k_EResultRateLimitExceeded                       :: 84;
    k_EResultAccountLoginDeniedNeedTwoFactor         :: 85;
    k_EResultItemDeleted                             :: 86;
    k_EResultAccountLoginDeniedThrottle              :: 87;
    k_EResultTwoFactorCodeMismatch                   :: 88;
    k_EResultTwoFactorActivationCodeMismatch         :: 89;
    k_EResultAccountAssociatedToMultiplePartners     :: 90;
    k_EResultNotModified                             :: 91;
    k_EResultNoMobileDevice                          :: 92;
    k_EResultTimeNotSynced                           :: 93;
    k_EResultSmsCodeFailed                           :: 94;
    k_EResultAccountLimitExceeded                    :: 95;
    k_EResultAccountActivityLimitExceeded            :: 96;
    k_EResultPhoneActivityLimitExceeded              :: 97;
    k_EResultRefundToWallet                          :: 98;
    k_EResultEmailSendFailure                        :: 99;
    k_EResultNotSettled                              :: 100;
    k_EResultNeedCaptcha                             :: 101;
    k_EResultGSLTDenied                              :: 102;
    k_EResultGSOwnerDenied                           :: 103;
    k_EResultInvalidItemType                         :: 104;
    k_EResultIPBanned                                :: 105;
    k_EResultGSLTExpired                             :: 106;
    k_EResultInsufficientFunds                       :: 107;
    k_EResultTooManyPending                          :: 108;
    k_EResultNoSiteLicensesFound                     :: 109;
    k_EResultWGNetworkSendExceeded                   :: 110;
    k_EResultAccountNotFriends                       :: 111;
    k_EResultLimitedUserAccount                      :: 112;
    k_EResultCantRemoveItem                          :: 113;
    k_EResultAccountDeleted                          :: 114;
    k_EResultExistingUserCancelledLicense            :: 115;
    k_EResultCommunityCooldown                       :: 116;
    k_EResultNoLauncherSpecified                     :: 117;
    k_EResultMustAgreeToSSA                          :: 118;
    k_EResultLauncherMigrated                        :: 119;
    k_EResultSteamRealmMismatch                      :: 120;
    k_EResultInvalidSignature                        :: 121;
    k_EResultParseFailure                            :: 122;
    k_EResultNoVerifiedPhone                         :: 123;
    k_EResultInsufficientBattery                     :: 124;
    k_EResultChargerRequired                         :: 125;
    k_EResultCachedCredentialInvalid                 :: 126;
    K_EResultPhoneNumberIsVOIP                       :: 127;
    k_EResultNotSupported                            :: 128;
}

SteamDatagramRelayAuthTicket :: struct {}
SteamDatagramHostedAddress :: struct {}
SteamDatagramGameCoordinatorServerLogin :: struct {}

FnSteamNetConnectionStatusChanged :: #type (unknown0: *SteamNetConnectionStatusChangedCallback_t) -> void #c_call;
FnSteamNetAuthenticationStatusChanged :: #type (unknown0: *SteamNetAuthenticationStatus_t) -> void #c_call;
FnSteamRelayNetworkStatusChanged :: #type (unknown0: *SteamRelayNetworkStatus_t) -> void #c_call;

/// Handle used to identify a connection to a remote host.
HSteamNetConnection :: uint32;

/// Handle used to identify a "listen socket".  Unlike traditional
/// Berkeley sockets, a listen socket and a connection are two
/// different abstractions.
HSteamListenSocket :: uint32;

/// Handle used to identify a poll group, used to query many
/// connections at once efficiently.
HSteamNetPollGroup :: uint32;

/// Used to return English-language diagnostic error messages to caller.
/// (For debugging or spewing to a console, etc.  Not intended for UI.)
SteamNetworkingErrMsg :: [1024] u8;

/// Identifier used for a network location point of presence.  (E.g. a Valve data center.)
/// Typically you won't need to directly manipulate these.
SteamNetworkingPOPID :: uint32;

/// A local timestamp.  You can subtract two timestamps to get the number of elapsed
/// microseconds.  This is guaranteed to increase over time during the lifetime
/// of a process, but not globally across runs.  You don't need to worry about
/// the value wrapping around.  Note that the underlying clock might not actually have
/// microsecond resolution.
SteamNetworkingMicroseconds :: int64;

/// Describe the status of a particular network resource
ESteamNetworkingAvailability :: enum s32 {
    CannotTry  :: -102;
    Failed     :: -101;
    Previously :: -100;

    Retrying   :: -10;

    NeverTried :: 1;
    Waiting    :: 2;
    Attempting :: 3;

    Current    :: 100;

    Unknown    :: 0;
    Force32bit :: 2147483647;

    k_ESteamNetworkingAvailability_CannotTry   :: CannotTry;
    k_ESteamNetworkingAvailability_Failed      :: Failed;
    k_ESteamNetworkingAvailability_Previously  :: Previously;

    k_ESteamNetworkingAvailability_Retrying    :: Retrying;

    k_ESteamNetworkingAvailability_NeverTried  :: NeverTried;
    k_ESteamNetworkingAvailability_Waiting     :: Waiting;
    k_ESteamNetworkingAvailability_Attempting  :: Attempting;

    k_ESteamNetworkingAvailability_Current     :: Current;

    k_ESteamNetworkingAvailability_Unknown     :: Unknown;
    k_ESteamNetworkingAvailability__Force32bit :: Force32bit;
}

/// Store an IP and port.  IPv6 is always used; IPv4 is represented using
/// "IPv4-mapped" addresses: IPv4 aa.bb.cc.dd => IPv6 ::ffff:aabb:ccdd
/// (RFC 4291 section 2.5.5.2.)
SteamNetworkingIPAddr :: struct {}

/// An abstract way to represent the identity of a network host.  All identities can
/// be represented as simple string.  Furthermore, this string representation is actually
/// used on the wire in several places, even though it is less efficient, in order to
/// facilitate forward compatibility.  (Old client code can handle an identity type that
/// it doesn't understand.)
SteamNetworkingIdentity :: struct {}

/// Describe the state of a connection.
SteamNetConnectionInfo_t :: struct {}

/// Quick connection state, pared down to something you could call
/// more frequently without it being too big of a perf hit.
SteamNetConnectionRealTimeStatus_t :: struct {}

/// Quick status of a particular lane
SteamNetConnectionRealTimeLaneStatus_t :: struct {}

/// A message that has been received.
SteamNetworkingMessage_t :: struct {}

/// Object that describes a "location" on the Internet with sufficient
/// detail that we can reasonably estimate an upper bound on the ping between
/// the two hosts, even if a direct route between the hosts is not possible,
/// and the connection must be routed through the Steam Datagram Relay network.
/// This does not contain any information that identifies the host.  Indeed,
/// if two hosts are in the same building or otherwise have nearly identical
/// networking characteristics, then it's valid to use the same location
/// object for both of them.
///
/// NOTE: This object should only be used in the same process!  Do not serialize it,
/// send it over the wire, or persist it in a file or database!  If you need
/// to do that, convert it to a string representation using the methods in
/// ISteamNetworkingUtils().
SteamNetworkPingLocation_t :: struct {}

/// Configuration values can be applied to different types of objects.
ESteamNetworkingConfigScope :: enum u32 {
    ESteamNetworkingConfig_Global           :: 1;

    ESteamNetworkingConfig_SocketsInterface :: 2;

    ESteamNetworkingConfig_ListenSocket     :: 3;

    ESteamNetworkingConfig_Connection       :: 4;

    ESteamNetworkingConfigScope__Force32Bit :: 2147483647;

    k_ESteamNetworkingConfig_Global           :: ESteamNetworkingConfig_Global;

    k_ESteamNetworkingConfig_SocketsInterface :: ESteamNetworkingConfig_SocketsInterface;

    k_ESteamNetworkingConfig_ListenSocket     :: ESteamNetworkingConfig_ListenSocket;

    k_ESteamNetworkingConfig_Connection       :: ESteamNetworkingConfig_Connection;

    k_ESteamNetworkingConfigScope__Force32Bit :: ESteamNetworkingConfigScope__Force32Bit;
}

// Different configuration values have different data types
ESteamNetworkingConfigDataType :: enum u32 {
    ESteamNetworkingConfig_Int32               :: 1;
    ESteamNetworkingConfig_Int64               :: 2;
    ESteamNetworkingConfig_Float               :: 3;
    ESteamNetworkingConfig_String              :: 4;
    ESteamNetworkingConfig_Ptr                 :: 5;

    ESteamNetworkingConfigDataType__Force32Bit :: 2147483647;

    k_ESteamNetworkingConfig_Int32               :: ESteamNetworkingConfig_Int32;
    k_ESteamNetworkingConfig_Int64               :: ESteamNetworkingConfig_Int64;
    k_ESteamNetworkingConfig_Float               :: ESteamNetworkingConfig_Float;
    k_ESteamNetworkingConfig_String              :: ESteamNetworkingConfig_String;
    k_ESteamNetworkingConfig_Ptr                 :: ESteamNetworkingConfig_Ptr;

    k_ESteamNetworkingConfigDataType__Force32Bit :: ESteamNetworkingConfigDataType__Force32Bit;
}

/// Configuration options
ESteamNetworkingConfigValue :: enum u32 {
    ESteamNetworkingConfig_Invalid                                        :: 0;

    ESteamNetworkingConfig_TimeoutInitial                                 :: 24;

    ESteamNetworkingConfig_TimeoutConnected                               :: 25;

    ESteamNetworkingConfig_SendBufferSize                                 :: 9;

    ESteamNetworkingConfig_RecvBufferSize                                 :: 47;

    ESteamNetworkingConfig_RecvBufferMessages                             :: 48;

    ESteamNetworkingConfig_RecvMaxMessageSize                             :: 49;

    ESteamNetworkingConfig_RecvMaxSegmentsPerPacket                       :: 50;

    ESteamNetworkingConfig_ConnectionUserData                             :: 40;

    ESteamNetworkingConfig_SendRateMin                                    :: 10;
    ESteamNetworkingConfig_SendRateMax                                    :: 11;

    ESteamNetworkingConfig_NagleTime                                      :: 12;

    ESteamNetworkingConfig_IP_AllowWithoutAuth                            :: 23;

    ESteamNetworkingConfig_IPLocalHost_AllowWithoutAuth                   :: 52;

    ESteamNetworkingConfig_MTU_PacketSize                                 :: 32;

    ESteamNetworkingConfig_MTU_DataSize                                   :: 33;

    ESteamNetworkingConfig_Unencrypted                                    :: 34;

    ESteamNetworkingConfig_SymmetricConnect                               :: 37;

    ESteamNetworkingConfig_LocalVirtualPort                               :: 38;

    ESteamNetworkingConfig_EnableDiagnosticsUI                            :: 46;

    ESteamNetworkingConfig_FakePacketLoss_Send                            :: 2;
    ESteamNetworkingConfig_FakePacketLoss_Recv                            :: 3;

    ESteamNetworkingConfig_FakePacketLag_Send                             :: 4;
    ESteamNetworkingConfig_FakePacketLag_Recv                             :: 5;

    ESteamNetworkingConfig_FakePacketReorder_Send                         :: 6;
    ESteamNetworkingConfig_FakePacketReorder_Recv                         :: 7;

    ESteamNetworkingConfig_FakePacketReorder_Time                         :: 8;

    ESteamNetworkingConfig_FakePacketDup_Send                             :: 26;
    ESteamNetworkingConfig_FakePacketDup_Recv                             :: 27;

    ESteamNetworkingConfig_FakePacketDup_TimeMax                          :: 28;

    ESteamNetworkingConfig_PacketTraceMaxBytes                            :: 41;

    ESteamNetworkingConfig_FakeRateLimit_Send_Rate                        :: 42;
    ESteamNetworkingConfig_FakeRateLimit_Send_Burst                       :: 43;
    ESteamNetworkingConfig_FakeRateLimit_Recv_Rate                        :: 44;
    ESteamNetworkingConfig_FakeRateLimit_Recv_Burst                       :: 45;

    ESteamNetworkingConfig_OutOfOrderCorrectionWindowMicroseconds         :: 51;

    ESteamNetworkingConfig_Callback_ConnectionStatusChanged               :: 201;

    ESteamNetworkingConfig_Callback_AuthStatusChanged                     :: 202;

    ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged             :: 203;

    ESteamNetworkingConfig_Callback_MessagesSessionRequest                :: 204;

    ESteamNetworkingConfig_Callback_MessagesSessionFailed                 :: 205;

    ESteamNetworkingConfig_Callback_CreateConnectionSignaling             :: 206;

    ESteamNetworkingConfig_Callback_FakeIPResult                          :: 207;

    ESteamNetworkingConfig_P2P_STUN_ServerList                            :: 103;

    ESteamNetworkingConfig_P2P_Transport_ICE_Enable                       :: 104;

    ESteamNetworkingConfig_P2P_Transport_ICE_Penalty                      :: 105;
    ESteamNetworkingConfig_P2P_Transport_SDR_Penalty                      :: 106;
    ESteamNetworkingConfig_P2P_TURN_ServerList                            :: 107;
    ESteamNetworkingConfig_P2P_TURN_UserList                              :: 108;
    ESteamNetworkingConfig_P2P_TURN_PassList                              :: 109;

    ESteamNetworkingConfig_P2P_Transport_ICE_Implementation               :: 110;

    ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial :: 19;

    ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail        :: 20;

    ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate           :: 21;

    ESteamNetworkingConfig_SDRClient_SingleSocket                         :: 22;

    ESteamNetworkingConfig_SDRClient_ForceRelayCluster                    :: 29;

    ESteamNetworkingConfig_SDRClient_DevTicket                            :: 30;

    ESteamNetworkingConfig_SDRClient_ForceProxyAddr                       :: 31;

    ESteamNetworkingConfig_SDRClient_FakeClusterPing                      :: 36;

    ESteamNetworkingConfig_SDRClient_LimitPingProbesToNearestN            :: 60;

    ESteamNetworkingConfig_LogLevel_AckRTT                                :: 13;
    ESteamNetworkingConfig_LogLevel_PacketDecode                          :: 14;
    ESteamNetworkingConfig_LogLevel_Message                               :: 15;
    ESteamNetworkingConfig_LogLevel_PacketGaps                            :: 16;
    ESteamNetworkingConfig_LogLevel_P2PRendezvous                         :: 17;
    ESteamNetworkingConfig_LogLevel_SDRRelayPings                         :: 18;

    ESteamNetworkingConfig_ECN                                            :: 999;

    ESteamNetworkingConfig_DELETED_EnumerateDevVars                       :: 35;

    ESteamNetworkingConfigValue__Force32Bit                               :: 2147483647;

    k_ESteamNetworkingConfig_Invalid                                        :: ESteamNetworkingConfig_Invalid;

    k_ESteamNetworkingConfig_TimeoutInitial                                 :: ESteamNetworkingConfig_TimeoutInitial;

    k_ESteamNetworkingConfig_TimeoutConnected                               :: ESteamNetworkingConfig_TimeoutConnected;

    k_ESteamNetworkingConfig_SendBufferSize                                 :: ESteamNetworkingConfig_SendBufferSize;

    k_ESteamNetworkingConfig_RecvBufferSize                                 :: ESteamNetworkingConfig_RecvBufferSize;

    k_ESteamNetworkingConfig_RecvBufferMessages                             :: ESteamNetworkingConfig_RecvBufferMessages;

    k_ESteamNetworkingConfig_RecvMaxMessageSize                             :: ESteamNetworkingConfig_RecvMaxMessageSize;

    k_ESteamNetworkingConfig_RecvMaxSegmentsPerPacket                       :: ESteamNetworkingConfig_RecvMaxSegmentsPerPacket;

    k_ESteamNetworkingConfig_ConnectionUserData                             :: ESteamNetworkingConfig_ConnectionUserData;

    k_ESteamNetworkingConfig_SendRateMin                                    :: ESteamNetworkingConfig_SendRateMin;
    k_ESteamNetworkingConfig_SendRateMax                                    :: ESteamNetworkingConfig_SendRateMax;

    k_ESteamNetworkingConfig_NagleTime                                      :: ESteamNetworkingConfig_NagleTime;

    k_ESteamNetworkingConfig_IP_AllowWithoutAuth                            :: ESteamNetworkingConfig_IP_AllowWithoutAuth;

    k_ESteamNetworkingConfig_IPLocalHost_AllowWithoutAuth                   :: ESteamNetworkingConfig_IPLocalHost_AllowWithoutAuth;

    k_ESteamNetworkingConfig_MTU_PacketSize                                 :: ESteamNetworkingConfig_MTU_PacketSize;

    k_ESteamNetworkingConfig_MTU_DataSize                                   :: ESteamNetworkingConfig_MTU_DataSize;

    k_ESteamNetworkingConfig_Unencrypted                                    :: ESteamNetworkingConfig_Unencrypted;

    k_ESteamNetworkingConfig_SymmetricConnect                               :: ESteamNetworkingConfig_SymmetricConnect;

    k_ESteamNetworkingConfig_LocalVirtualPort                               :: ESteamNetworkingConfig_LocalVirtualPort;

    k_ESteamNetworkingConfig_EnableDiagnosticsUI                            :: ESteamNetworkingConfig_EnableDiagnosticsUI;

    k_ESteamNetworkingConfig_FakePacketLoss_Send                            :: ESteamNetworkingConfig_FakePacketLoss_Send;
    k_ESteamNetworkingConfig_FakePacketLoss_Recv                            :: ESteamNetworkingConfig_FakePacketLoss_Recv;

    k_ESteamNetworkingConfig_FakePacketLag_Send                             :: ESteamNetworkingConfig_FakePacketLag_Send;
    k_ESteamNetworkingConfig_FakePacketLag_Recv                             :: ESteamNetworkingConfig_FakePacketLag_Recv;

    k_ESteamNetworkingConfig_FakePacketReorder_Send                         :: ESteamNetworkingConfig_FakePacketReorder_Send;
    k_ESteamNetworkingConfig_FakePacketReorder_Recv                         :: ESteamNetworkingConfig_FakePacketReorder_Recv;

    k_ESteamNetworkingConfig_FakePacketReorder_Time                         :: ESteamNetworkingConfig_FakePacketReorder_Time;

    k_ESteamNetworkingConfig_FakePacketDup_Send                             :: ESteamNetworkingConfig_FakePacketDup_Send;
    k_ESteamNetworkingConfig_FakePacketDup_Recv                             :: ESteamNetworkingConfig_FakePacketDup_Recv;

    k_ESteamNetworkingConfig_FakePacketDup_TimeMax                          :: ESteamNetworkingConfig_FakePacketDup_TimeMax;

    k_ESteamNetworkingConfig_PacketTraceMaxBytes                            :: ESteamNetworkingConfig_PacketTraceMaxBytes;

    k_ESteamNetworkingConfig_FakeRateLimit_Send_Rate                        :: ESteamNetworkingConfig_FakeRateLimit_Send_Rate;
    k_ESteamNetworkingConfig_FakeRateLimit_Send_Burst                       :: ESteamNetworkingConfig_FakeRateLimit_Send_Burst;
    k_ESteamNetworkingConfig_FakeRateLimit_Recv_Rate                        :: ESteamNetworkingConfig_FakeRateLimit_Recv_Rate;
    k_ESteamNetworkingConfig_FakeRateLimit_Recv_Burst                       :: ESteamNetworkingConfig_FakeRateLimit_Recv_Burst;

    k_ESteamNetworkingConfig_OutOfOrderCorrectionWindowMicroseconds         :: ESteamNetworkingConfig_OutOfOrderCorrectionWindowMicroseconds;

    k_ESteamNetworkingConfig_Callback_ConnectionStatusChanged               :: ESteamNetworkingConfig_Callback_ConnectionStatusChanged;

    k_ESteamNetworkingConfig_Callback_AuthStatusChanged                     :: ESteamNetworkingConfig_Callback_AuthStatusChanged;

    k_ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged             :: ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged;

    k_ESteamNetworkingConfig_Callback_MessagesSessionRequest                :: ESteamNetworkingConfig_Callback_MessagesSessionRequest;

    k_ESteamNetworkingConfig_Callback_MessagesSessionFailed                 :: ESteamNetworkingConfig_Callback_MessagesSessionFailed;

    k_ESteamNetworkingConfig_Callback_CreateConnectionSignaling             :: ESteamNetworkingConfig_Callback_CreateConnectionSignaling;

    k_ESteamNetworkingConfig_Callback_FakeIPResult                          :: ESteamNetworkingConfig_Callback_FakeIPResult;

    k_ESteamNetworkingConfig_P2P_STUN_ServerList                            :: ESteamNetworkingConfig_P2P_STUN_ServerList;

    k_ESteamNetworkingConfig_P2P_Transport_ICE_Enable                       :: ESteamNetworkingConfig_P2P_Transport_ICE_Enable;

    k_ESteamNetworkingConfig_P2P_Transport_ICE_Penalty                      :: ESteamNetworkingConfig_P2P_Transport_ICE_Penalty;
    k_ESteamNetworkingConfig_P2P_Transport_SDR_Penalty                      :: ESteamNetworkingConfig_P2P_Transport_SDR_Penalty;
    k_ESteamNetworkingConfig_P2P_TURN_ServerList                            :: ESteamNetworkingConfig_P2P_TURN_ServerList;
    k_ESteamNetworkingConfig_P2P_TURN_UserList                              :: ESteamNetworkingConfig_P2P_TURN_UserList;
    k_ESteamNetworkingConfig_P2P_TURN_PassList                              :: ESteamNetworkingConfig_P2P_TURN_PassList;

    k_ESteamNetworkingConfig_P2P_Transport_ICE_Implementation               :: ESteamNetworkingConfig_P2P_Transport_ICE_Implementation;

    k_ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial :: ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial;

    k_ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail        :: ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail;

    k_ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate           :: ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate;

    k_ESteamNetworkingConfig_SDRClient_SingleSocket                         :: ESteamNetworkingConfig_SDRClient_SingleSocket;

    k_ESteamNetworkingConfig_SDRClient_ForceRelayCluster                    :: ESteamNetworkingConfig_SDRClient_ForceRelayCluster;

    k_ESteamNetworkingConfig_SDRClient_DevTicket                            :: ESteamNetworkingConfig_SDRClient_DevTicket;

    k_ESteamNetworkingConfig_SDRClient_ForceProxyAddr                       :: ESteamNetworkingConfig_SDRClient_ForceProxyAddr;

    k_ESteamNetworkingConfig_SDRClient_FakeClusterPing                      :: ESteamNetworkingConfig_SDRClient_FakeClusterPing;

    k_ESteamNetworkingConfig_SDRClient_LimitPingProbesToNearestN            :: ESteamNetworkingConfig_SDRClient_LimitPingProbesToNearestN;

    k_ESteamNetworkingConfig_LogLevel_AckRTT                                :: ESteamNetworkingConfig_LogLevel_AckRTT;
    k_ESteamNetworkingConfig_LogLevel_PacketDecode                          :: ESteamNetworkingConfig_LogLevel_PacketDecode;
    k_ESteamNetworkingConfig_LogLevel_Message                               :: ESteamNetworkingConfig_LogLevel_Message;
    k_ESteamNetworkingConfig_LogLevel_PacketGaps                            :: ESteamNetworkingConfig_LogLevel_PacketGaps;
    k_ESteamNetworkingConfig_LogLevel_P2PRendezvous                         :: ESteamNetworkingConfig_LogLevel_P2PRendezvous;
    k_ESteamNetworkingConfig_LogLevel_SDRRelayPings                         :: ESteamNetworkingConfig_LogLevel_SDRRelayPings;

    k_ESteamNetworkingConfig_ECN                                            :: ESteamNetworkingConfig_ECN;

    k_ESteamNetworkingConfig_DELETED_EnumerateDevVars                       :: ESteamNetworkingConfig_DELETED_EnumerateDevVars;

    k_ESteamNetworkingConfigValue__Force32Bit                               :: ESteamNetworkingConfigValue__Force32Bit;
}

/// In a few places we need to set configuration options on listen sockets and connections, and
/// have them take effect *before* the listen socket or connection really starts doing anything.
/// Creating the object and then setting the options "immediately" after creation doesn't work
/// completely, because network packets could be received between the time the object is created and
/// when the options are applied.  To set options at creation time in a reliable way, they must be
/// passed to the creation function.  This structure is used to pass those options.
///
/// For the meaning of these fields, see ISteamNetworkingUtils::SetConfigValue.  Basically
/// when the object is created, we just iterate over the list of options and call
/// ISteamNetworkingUtils::SetConfigValueStruct, where the scope arguments are supplied by the
/// object being created.
SteamNetworkingConfigValue_t :: struct {}

/// Return value of ISteamNetworkintgUtils::GetConfigValue
ESteamNetworkingGetConfigValueResult :: enum s32 {
    ESteamNetworkingGetConfigValue_BadValue          :: -1;
    ESteamNetworkingGetConfigValue_BadScopeObj       :: -2;
    ESteamNetworkingGetConfigValue_BufferTooSmall    :: -3;
    ESteamNetworkingGetConfigValue_OK                :: 1;
    ESteamNetworkingGetConfigValue_OKInherited       :: 2;

    ESteamNetworkingGetConfigValueResult__Force32Bit :: 2147483647;

    k_ESteamNetworkingGetConfigValue_BadValue          :: ESteamNetworkingGetConfigValue_BadValue;
    k_ESteamNetworkingGetConfigValue_BadScopeObj       :: ESteamNetworkingGetConfigValue_BadScopeObj;
    k_ESteamNetworkingGetConfigValue_BufferTooSmall    :: ESteamNetworkingGetConfigValue_BufferTooSmall;
    k_ESteamNetworkingGetConfigValue_OK                :: ESteamNetworkingGetConfigValue_OK;
    k_ESteamNetworkingGetConfigValue_OKInherited       :: ESteamNetworkingGetConfigValue_OKInherited;

    k_ESteamNetworkingGetConfigValueResult__Force32Bit :: ESteamNetworkingGetConfigValueResult__Force32Bit;
}

/// Detail level for diagnostic output callback.
/// See ISteamNetworkingUtils::SetDebugOutputFunction
ESteamNetworkingSocketsDebugOutputType :: enum u32 {
    None       :: 0;
    Bug        :: 1;
    Error      :: 2;
    Important  :: 3;
    Warning    :: 4;
    Msg        :: 5;
    Verbose    :: 6;
    Debug      :: 7;
    Everything :: 8;

    Force32Bit :: 2147483647;

    k_ESteamNetworkingSocketsDebugOutputType_None        :: None;
    k_ESteamNetworkingSocketsDebugOutputType_Bug         :: Bug;
    k_ESteamNetworkingSocketsDebugOutputType_Error       :: Error;
    k_ESteamNetworkingSocketsDebugOutputType_Important   :: Important;
    k_ESteamNetworkingSocketsDebugOutputType_Warning     :: Warning;
    k_ESteamNetworkingSocketsDebugOutputType_Msg         :: Msg;
    k_ESteamNetworkingSocketsDebugOutputType_Verbose     :: Verbose;
    k_ESteamNetworkingSocketsDebugOutputType_Debug       :: Debug;
    k_ESteamNetworkingSocketsDebugOutputType_Everything  :: Everything;

    k_ESteamNetworkingSocketsDebugOutputType__Force32Bit :: Force32Bit;
}

/// Setup callback for debug output, and the desired verbosity you want.
FSteamNetworkingSocketsDebugOutput :: #type (nType: ESteamNetworkingSocketsDebugOutputType, pszMsg: *u8) -> void #c_call;

ISteamNetworkingConnectionSignaling :: struct {}
ISteamNetworkingSignalingRecvContext :: struct {}

//-----------------------------------------------------------------------------
/// Lower level networking API.
///
/// - Connection-oriented API (like TCP, not UDP).  When sending and receiving
///   messages, a connection handle is used.  (For a UDP-style interface, where
///   the peer is identified by their address with each send/recv call, see
///   ISteamNetworkingMessages.)  The typical pattern is for a "server" to "listen"
///   on a "listen socket."  A "client" will "connect" to the server, and the
///   server will "accept" the connection.  If you have a symmetric situation
///   where either peer may initiate the connection and server/client roles are
///   not clearly defined, check out k_ESteamNetworkingConfig_SymmetricConnect.
/// - But unlike TCP, it's message-oriented, not stream-oriented.
/// - Mix of reliable and unreliable messages
/// - Fragmentation and reassembly
/// - Supports connectivity over plain UDP
/// - Also supports SDR ("Steam Datagram Relay") connections, which are
///   addressed by the identity of the peer.  There is a "P2P" use case and
///   a "hosted dedicated server" use case.
///
/// Note that neither of the terms "connection" nor "socket" necessarily correspond
/// one-to-one with an underlying UDP socket.  An attempt has been made to
/// keep the semantics as similar to the standard socket model when appropriate,
/// but some deviations do exist.
///
/// See also: ISteamNetworkingMessages, the UDP-style interface.  This API might be
/// easier to use, especially when porting existing UDP code.
ISteamNetworkingSockets :: struct {
    vtable: *ISteamNetworkingSockets_VTable;
}
ISteamNetworkingSockets_VTable :: struct #type_info_none {
    CreateListenSocketIP: *void;

    ConnectByIPAddress: *void;

    CreateListenSocketP2P: *void;

    ConnectP2P: *void;

    AcceptConnection: *void;

    CloseConnection: *void;

    CloseListenSocket: *void;

    SetConnectionUserData: *void;

    GetConnectionUserData: *void;

    SetConnectionName: *void;

    GetConnectionName: *void;

    SendMessageToConnection: *void;

    SendMessages: *void;

    FlushMessagesOnConnection: *void;

    ReceiveMessagesOnConnection: *void;

    GetConnectionInfo: *void;

    GetConnectionRealTimeStatus: *void;

    GetDetailedConnectionStatus: *void;

    GetListenSocketAddress: *void;

    CreateSocketPair: *void;

    ConfigureConnectionLanes: *void;

    GetIdentity: *void;

    InitAuthentication: *void;

    GetAuthenticationStatus: *void;

    CreatePollGroup: *void;

    DestroyPollGroup: *void;

    SetConnectionPollGroup: *void;

    ReceiveMessagesOnPollGroup: *void;

    ReceivedRelayAuthTicket: *void;

    FindRelayAuthTicketForServer: *void;

    ConnectToHostedDedicatedServer: *void;

    GetHostedDedicatedServerPort: *void;

    GetHostedDedicatedServerPOPID: *void;

    GetHostedDedicatedServerAddress: *void;

    CreateHostedDedicatedServerListenSocket: *void;

    GetGameCoordinatorServerLogin: *void;

    ConnectP2PCustomSignaling: *void;

    ReceivedP2PCustomSignal: *void;

    GetCertificateRequest: *void;

    SetCertificate: *void;

    ResetIdentity: *void;

    RunCallbacks: *void;

    BeginAsyncRequestFakeIP: *void;

    GetFakeIP: *void;

    CreateListenSocketP2PFakeIP: *void;

    GetRemoteFakeIPForConnection: *void;

    CreateFakeUDPPort: *void;
}

vtable :: (obj: *ISteamNetworkingSockets) -> *ISteamNetworkingSockets_VTable { return obj.vtable; }


/// This callback is posted whenever a connection is created, destroyed, or changes state.
/// The m_info field will contain a complete description of the connection at the time the
/// change occurred and the callback was posted.  In particular, m_eState will have the
/// new connection state.
///
/// You will usually need to listen for this callback to know when:
/// - A new connection arrives on a listen socket.
///   m_info.m_hListenSocket will be set, m_eOldState = k_ESteamNetworkingConnectionState_None,
///   and m_info.m_eState = k_ESteamNetworkingConnectionState_Connecting.
///   See ISteamNetworkigSockets::AcceptConnection.
/// - A connection you initiated has been accepted by the remote host.
///   m_eOldState = k_ESteamNetworkingConnectionState_Connecting, and
///   m_info.m_eState = k_ESteamNetworkingConnectionState_Connected.
///   Some connections might transition to k_ESteamNetworkingConnectionState_FindingRoute first.
/// - A connection has been actively rejected or closed by the remote host.
///   m_eOldState = k_ESteamNetworkingConnectionState_Connecting or k_ESteamNetworkingConnectionState_Connected,
///   and m_info.m_eState = k_ESteamNetworkingConnectionState_ClosedByPeer.  m_info.m_eEndReason
///   and m_info.m_szEndDebug will have for more details.
///   NOTE: upon receiving this callback, you must still destroy the connection using
///   ISteamNetworkingSockets::CloseConnection to free up local resources.  (The details
///   passed to the function are not used in this case, since the connection is already closed.)
/// - A problem was detected with the connection, and it has been closed by the local host.
///   The most common failure is timeout, but other configuration or authentication failures
///   can cause this.  m_eOldState = k_ESteamNetworkingConnectionState_Connecting or
///   k_ESteamNetworkingConnectionState_Connected, and m_info.m_eState = k_ESteamNetworkingConnectionState_ProblemDetectedLocally.
///   m_info.m_eEndReason and m_info.m_szEndDebug will have for more details.
///   NOTE: upon receiving this callback, you must still destroy the connection using
///   ISteamNetworkingSockets::CloseConnection to free up local resources.  (The details
///   passed to the function are not used in this case, since the connection is already closed.)
///
/// Remember that callbacks are posted to a queue, and networking connections can
/// change at any time.  It is possible that the connection has already changed
/// state by the time you process this callback.
///
/// Also note that callbacks will be posted when connections are created and destroyed by your own API calls.
SteamNetConnectionStatusChangedCallback_t :: struct {}

/// A struct used to describe our readiness to participate in authenticated,
/// encrypted communication.  In order to do this we need:
///
/// - The list of trusted CA certificates that might be relevant for this
///   app.
/// - A valid certificate issued by a CA.
///
/// This callback is posted whenever the state of our readiness changes.
SteamNetAuthenticationStatus_t :: struct {}

//-----------------------------------------------------------------------------
/// Misc networking utilities for checking the local networking environment
/// and estimating pings.
ISteamNetworkingUtils :: struct {
    vtable: *ISteamNetworkingUtils_VTable;
}
ISteamNetworkingUtils_VTable :: struct #type_info_none {
    AllocateMessage: *void;

    GetRelayNetworkStatus: *void;

    GetLocalPingLocation: *void;

    EstimatePingTimeBetweenTwoLocations: *void;

    EstimatePingTimeFromLocalHost: *void;

    ConvertPingLocationToString: *void;

    ParsePingLocationString: *void;

    CheckPingDataUpToDate: *void;

    GetPingToDataCenter: *void;

    GetDirectPingToPOP: *void;

    GetPOPCount: *void;

    GetPOPList: *void;

    GetLocalTimestamp: *void;

    SetDebugOutputFunction: *void;

    GetIPv4FakeIPType: *void;

    GetRealIdentityForFakeIP: *void;

    SetConfigValue: *void;

    GetConfigValue: *void;

    GetConfigValueInfo: *void;

    IterateGenericEditableConfigValues: *void;

    SteamNetworkingIPAddr_ToString: *void;
    SteamNetworkingIPAddr_ParseString: *void;
    SteamNetworkingIPAddr_GetFakeIPType: *void;
    SteamNetworkingIdentity_ToString: *void;
    SteamNetworkingIdentity_ParseString: *void;
}

vtable :: (obj: *ISteamNetworkingUtils) -> *ISteamNetworkingUtils_VTable { return obj.vtable; }


/// A struct used to describe our readiness to use the relay network.
/// To do this we first need to fetch the network configuration,
/// which describes what POPs are available.
SteamRelayNetworkStatus_t :: struct {}

uint64_steamid :: uint64;

// ISteamNetworkingSockets
SteamAPI_SteamNetworkingSockets_v009 :: () -> *ISteamNetworkingSockets #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #no_context {
    return SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP(self, *localAddress, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress(self, *address, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P :: (self: *ISteamNetworkingSockets, nLocalVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamAPI_ISteamNetworkingSockets_ConnectP2P(self, *identityRemote, nRemoteVirtualPort, nOptions, pOptions);
}
SteamAPI_ISteamNetworkingSockets_AcceptConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_CloseConnection :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nReason: s32, pszDebug: *u8, bEnableLinger: bool) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_CloseListenSocket :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_SetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nUserData: int64) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection) -> int64 #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_SetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8) -> void #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8, nMaxLen: s32) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_SendMessageToConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pData: *void, cbData: uint32, nSendFlags: s32, pOutMessageNumber: *int64) -> EResult #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_SendMessages :: (self: *ISteamNetworkingSockets, nMessages: s32, pMessages: **SteamNetworkingMessage_t, pOutMessageNumberOrResult: *int64) -> void #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetConnectionInfo :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pInfo: *SteamNetConnectionInfo_t) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pStats: *SteamNetConnectionRealTimeStatus_t, nLanes: s32, pLanes: *SteamNetConnectionRealTimeLaneStatus_t) -> EResult #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pszBuf: *u8, cbBuf: s32) -> s32 #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket, address: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_CreateSocketPair :: (self: *ISteamNetworkingSockets, pOutConnection1: *HSteamNetConnection, pOutConnection2: *HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: *SteamNetworkingIdentity, pIdentity2: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, nNumLanes: s32, pLanePriorities: *s32, pLaneWeights: *uint16) -> EResult #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetIdentity :: (self: *ISteamNetworkingSockets, pIdentity: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_InitAuthentication :: (self: *ISteamNetworkingSockets) -> ESteamNetworkingAvailability #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus :: (self: *ISteamNetworkingSockets, pDetails: *SteamNetAuthenticationStatus_t) -> ESteamNetworkingAvailability #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_CreatePollGroup :: (self: *ISteamNetworkingSockets) -> HSteamNetPollGroup #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_DestroyPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, hPollGroup: HSteamNetPollGroup) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libgamenetworkingsockets;

SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling :: (self: *ISteamNetworkingSockets, pSignaling: *ISteamNetworkingConnectionSignaling, pPeerIdentity: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal :: (self: *ISteamNetworkingSockets, pMsg: *void, cbMsg: s32, pContext: *ISteamNetworkingSignalingRecvContext) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_GetCertificateRequest :: (self: *ISteamNetworkingSockets, pcbBlob: *s32, pBlob: *void, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_SetCertificate :: (self: *ISteamNetworkingSockets, pCertificate: *void, cbCertificate: s32, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingSockets_RunCallbacks :: (self: *ISteamNetworkingSockets) -> void #foreign libgamenetworkingsockets;

// ISteamNetworkingUtils
SteamAPI_SteamNetworkingUtils_v003 :: () -> *ISteamNetworkingUtils #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_AllocateMessage :: (self: *ISteamNetworkingUtils, cbAllocateBuffer: s32) -> *SteamNetworkingMessage_t #foreign libgamenetworkingsockets;

SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp :: (self: *ISteamNetworkingUtils) -> SteamNetworkingMicroseconds #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction :: (self: *ISteamNetworkingUtils, eDetailLevel: ESteamNetworkingSocketsDebugOutputType, pfnFunc: FSteamNetworkingSocketsDebugOutput) -> void #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32 :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *void) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32 :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetConnectionStatusChanged) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetAuthenticationStatusChanged) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamRelayNetworkStatusChanged) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, eDataType: ESteamNetworkingConfigDataType, pArg: *void) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: *SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #no_context {
    return SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct(self, *opt, eScopeType, scopeObj);
}
SteamAPI_ISteamNetworkingUtils_GetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, pOutDataType: *ESteamNetworkingConfigDataType, pResult: *void, cbResult: *u64) -> ESteamNetworkingGetConfigValueResult #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, pOutDataType: *ESteamNetworkingConfigDataType, pOutScope: *ESteamNetworkingConfigScope) -> *u8 #foreign libgamenetworkingsockets;
SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues :: (self: *ISteamNetworkingUtils, eCurrent: ESteamNetworkingConfigValue, bEnumerateDevVars: bool) -> ESteamNetworkingConfigValue #foreign libgamenetworkingsockets;

// SteamNetworkingIPAddr
SteamAPI_SteamNetworkingIPAddr_Clear :: (self: *SteamNetworkingIPAddr) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros :: (self: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_SetIPv6 :: (self: *SteamNetworkingIPAddr, ipv6: *uint8, nPort: uint16) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_SetIPv4 :: (self: *SteamNetworkingIPAddr, nIP: uint32, nPort: uint16) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_IsIPv4 :: (self: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_GetIPv4 :: (self: *SteamNetworkingIPAddr) -> uint32 #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost :: (self: *SteamNetworkingIPAddr, nPort: uint16) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_IsLocalHost :: (self: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: SteamNetworkingIPAddr) -> bool #no_context {
    return SteamAPI_SteamNetworkingIPAddr_IsEqualTo(self, *x);
}
SteamAPI_SteamNetworkingIPAddr_ToString :: (self: *SteamNetworkingIPAddr, buf: *u8, cbBuf: u64, bWithPort: bool) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIPAddr_ParseString :: (self: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign libgamenetworkingsockets;

// SteamNetworkingIdentity
SteamAPI_SteamNetworkingIdentity_Clear :: (self: *SteamNetworkingIdentity) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_IsInvalid :: (self: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetSteamID :: (self: *SteamNetworkingIdentity, steamID: uint64_steamid) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_GetSteamID :: (self: *SteamNetworkingIdentity) -> uint64_steamid #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetSteamID64 :: (self: *SteamNetworkingIdentity, steamID: uint64) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_GetSteamID64 :: (self: *SteamNetworkingIdentity) -> uint64 #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID :: (self: *SteamNetworkingIdentity) -> *u8 #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: *SteamNetworkingIPAddr) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: SteamNetworkingIPAddr) #no_context {
    SteamAPI_SteamNetworkingIdentity_SetIPAddr(self, *addr);
}
SteamAPI_SteamNetworkingIdentity_GetIPAddr :: (self: *SteamNetworkingIdentity) -> *SteamNetworkingIPAddr #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetLocalHost :: (self: *SteamNetworkingIdentity) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_IsLocalHost :: (self: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetGenericString :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_GetGenericString :: (self: *SteamNetworkingIdentity) -> *u8 #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_SetGenericBytes :: (self: *SteamNetworkingIdentity, data: *void, cbLen: uint32) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_GetGenericBytes :: (self: *SteamNetworkingIdentity, cbLen: *s32) -> *uint8 #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: SteamNetworkingIdentity) -> bool #no_context {
    return SteamAPI_SteamNetworkingIdentity_IsEqualTo(self, *x);
}
SteamAPI_SteamNetworkingIdentity_ToString :: (self: *SteamNetworkingIdentity, buf: *u8, cbBuf: u64) -> void #foreign libgamenetworkingsockets;
SteamAPI_SteamNetworkingIdentity_ParseString :: (self: *SteamNetworkingIdentity, sizeofIdentity: u64, pszStr: *u8) -> bool #foreign libgamenetworkingsockets;

// SteamNetworkingMessage_t
SteamAPI_SteamNetworkingMessage_t_Release :: (self: *SteamNetworkingMessage_t) -> void #foreign libgamenetworkingsockets;

//
// Special flat functions to make it easier to work with custom signaling
//
FSteamNetworkingSocketsCustomSignaling_SendSignal :: #type (ctx: *void, hConn: HSteamNetConnection, info: *SteamNetConnectionInfo_t, pMsg: *void, cbMsg: s32) -> bool #c_call;
FSteamNetworkingSocketsCustomSignaling_Release :: #type (ctx: *void) -> void #c_call;

/// Create an ISteamNetworkingConnectionSignaling object from plain C primitives.
SteamAPI_ISteamNetworkingSockets_CreateCustomSignaling :: (ctx: *void, fnSendSignal: FSteamNetworkingSocketsCustomSignaling_SendSignal, fnRelease: FSteamNetworkingSocketsCustomSignaling_Release) -> *ISteamNetworkingConnectionSignaling #foreign libgamenetworkingsockets;

FSteamNetworkingCustomSignalingRecvContext_OnConnectRequest :: #type (ctx: *void, hConn: HSteamNetConnection, identityPeer: *SteamNetworkingIdentity, nLocalVirtualPort: s32) -> *ISteamNetworkingConnectionSignaling #c_call;
FSteamNetworkingCustomSignalingRecvContext_SendRejectionSignal :: #type (ctx: *void, identityPeer: *SteamNetworkingIdentity, pMsg: *void, cbMsg: s32) -> void #c_call;

/// Same as SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal, but using plain C primitives.
SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal2 :: (self: *ISteamNetworkingSockets, pMsg: *void, cbMsg: s32, ctx: *void, fnOnConnectRequest: FSteamNetworkingCustomSignalingRecvContext_OnConnectRequest, fnSendRejectionSignal: FSteamNetworkingCustomSignalingRecvContext_SendRejectionSignal) -> bool #foreign libgamenetworkingsockets;

#scope_file

libgamenetworkingsockets :: #library "bin/linux/libGameNetworkingSockets";
