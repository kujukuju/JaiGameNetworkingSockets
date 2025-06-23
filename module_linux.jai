//
// This file was auto-generated using the following command:
//
// jai generate.jai ../
//

#module_parameters () (USE_STEAMWORKS := false);

#if USE_STEAMWORKS {
    #import "JaiSteamworks";
} else {
    uint8 :: u8;

    uint16 :: u16;
    int32 :: s32;
    uint32 :: u32;
    int64 :: s64;
    uint64 :: u64;

    AccountID_t :: uint32;

    ESteamIPType :: enum u32 {
        ESteamIPTypeIPv4 :: 0;
        ESteamIPTypeIPv6 :: 1;

        k_ESteamIPTypeIPv4 :: ESteamIPTypeIPv4;
        k_ESteamIPTypeIPv6 :: ESteamIPTypeIPv6;
    }

    // Steam universes.  Each universe is a self-contained Steam instance.
    EUniverse :: enum u32 {
        EUniverseInvalid  :: 0;
        EUniversePublic   :: 1;
        EUniverseBeta     :: 2;
        EUniverseInternal :: 3;
        EUniverseDev      :: 4;

        EUniverseMax      :: 5;

        k_EUniverseInvalid  :: EUniverseInvalid;
        k_EUniversePublic   :: EUniversePublic;
        k_EUniverseBeta     :: EUniverseBeta;
        k_EUniverseInternal :: EUniverseInternal;
        k_EUniverseDev      :: EUniverseDev;

        k_EUniverseMax      :: EUniverseMax;
    }

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

    // Error codes for use with the voice functions
    EVoiceResult :: enum u32 {
        EVoiceResultOK                   :: 0;
        EVoiceResultNotInitialized       :: 1;
        EVoiceResultNotRecording         :: 2;
        EVoiceResultNoData               :: 3;
        EVoiceResultBufferTooSmall       :: 4;
        EVoiceResultDataCorrupted        :: 5;
        EVoiceResultRestricted           :: 6;
        EVoiceResultUnsupportedCodec     :: 7;
        EVoiceResultReceiverOutOfDate    :: 8;
        EVoiceResultReceiverDidNotAnswer :: 9;

        k_EVoiceResultOK                   :: EVoiceResultOK;
        k_EVoiceResultNotInitialized       :: EVoiceResultNotInitialized;
        k_EVoiceResultNotRecording         :: EVoiceResultNotRecording;
        k_EVoiceResultNoData               :: EVoiceResultNoData;
        k_EVoiceResultBufferTooSmall       :: EVoiceResultBufferTooSmall;
        k_EVoiceResultDataCorrupted        :: EVoiceResultDataCorrupted;
        k_EVoiceResultRestricted           :: EVoiceResultRestricted;
        k_EVoiceResultUnsupportedCodec     :: EVoiceResultUnsupportedCodec;
        k_EVoiceResultReceiverOutOfDate    :: EVoiceResultReceiverOutOfDate;
        k_EVoiceResultReceiverDidNotAnswer :: EVoiceResultReceiverDidNotAnswer;
    }

    // Result codes to GSHandleClientDeny/Kick
    EDenyReason :: enum u32 {
        EDenyInvalid                 :: 0;
        EDenyInvalidVersion          :: 1;
        EDenyGeneric                 :: 2;
        EDenyNotLoggedOn             :: 3;
        EDenyNoLicense               :: 4;
        EDenyCheater                 :: 5;
        EDenyLoggedInElseWhere       :: 6;
        EDenyUnknownText             :: 7;
        EDenyIncompatibleAnticheat   :: 8;
        EDenyMemoryCorruption        :: 9;
        EDenyIncompatibleSoftware    :: 10;
        EDenySteamConnectionLost     :: 11;
        EDenySteamConnectionError    :: 12;
        EDenySteamResponseTimedOut   :: 13;
        EDenySteamValidationStalled  :: 14;
        EDenySteamOwnerLeftGuestUser :: 15;

        k_EDenyInvalid                 :: EDenyInvalid;
        k_EDenyInvalidVersion          :: EDenyInvalidVersion;
        k_EDenyGeneric                 :: EDenyGeneric;
        k_EDenyNotLoggedOn             :: EDenyNotLoggedOn;
        k_EDenyNoLicense               :: EDenyNoLicense;
        k_EDenyCheater                 :: EDenyCheater;
        k_EDenyLoggedInElseWhere       :: EDenyLoggedInElseWhere;
        k_EDenyUnknownText             :: EDenyUnknownText;
        k_EDenyIncompatibleAnticheat   :: EDenyIncompatibleAnticheat;
        k_EDenyMemoryCorruption        :: EDenyMemoryCorruption;
        k_EDenyIncompatibleSoftware    :: EDenyIncompatibleSoftware;
        k_EDenySteamConnectionLost     :: EDenySteamConnectionLost;
        k_EDenySteamConnectionError    :: EDenySteamConnectionError;
        k_EDenySteamResponseTimedOut   :: EDenySteamResponseTimedOut;
        k_EDenySteamValidationStalled  :: EDenySteamValidationStalled;
        k_EDenySteamOwnerLeftGuestUser :: EDenySteamOwnerLeftGuestUser;
    }

    // results from BeginAuthSession
    EBeginAuthSessionResult :: enum u32 {
        EBeginAuthSessionResultOK               :: 0;
        EBeginAuthSessionResultInvalidTicket    :: 1;
        EBeginAuthSessionResultDuplicateRequest :: 2;
        EBeginAuthSessionResultInvalidVersion   :: 3;
        EBeginAuthSessionResultGameMismatch     :: 4;
        EBeginAuthSessionResultExpiredTicket    :: 5;

        k_EBeginAuthSessionResultOK               :: EBeginAuthSessionResultOK;
        k_EBeginAuthSessionResultInvalidTicket    :: EBeginAuthSessionResultInvalidTicket;
        k_EBeginAuthSessionResultDuplicateRequest :: EBeginAuthSessionResultDuplicateRequest;
        k_EBeginAuthSessionResultInvalidVersion   :: EBeginAuthSessionResultInvalidVersion;
        k_EBeginAuthSessionResultGameMismatch     :: EBeginAuthSessionResultGameMismatch;
        k_EBeginAuthSessionResultExpiredTicket    :: EBeginAuthSessionResultExpiredTicket;
    }

    // Callback values for callback ValidateAuthTicketResponse_t which is a response to BeginAuthSession
    EAuthSessionResponse :: enum u32 {
        EAuthSessionResponseOK                               :: 0;
        EAuthSessionResponseUserNotConnectedToSteam          :: 1;
        EAuthSessionResponseNoLicenseOrExpired               :: 2;
        EAuthSessionResponseVACBanned                        :: 3;
        EAuthSessionResponseLoggedInElseWhere                :: 4;
        EAuthSessionResponseVACCheckTimedOut                 :: 5;
        EAuthSessionResponseAuthTicketCanceled               :: 6;
        EAuthSessionResponseAuthTicketInvalidAlreadyUsed     :: 7;
        EAuthSessionResponseAuthTicketInvalid                :: 8;
        EAuthSessionResponsePublisherIssuedBan               :: 9;
        EAuthSessionResponseAuthTicketNetworkIdentityFailure :: 10;

        k_EAuthSessionResponseOK                               :: EAuthSessionResponseOK;
        k_EAuthSessionResponseUserNotConnectedToSteam          :: EAuthSessionResponseUserNotConnectedToSteam;
        k_EAuthSessionResponseNoLicenseOrExpired               :: EAuthSessionResponseNoLicenseOrExpired;
        k_EAuthSessionResponseVACBanned                        :: EAuthSessionResponseVACBanned;
        k_EAuthSessionResponseLoggedInElseWhere                :: EAuthSessionResponseLoggedInElseWhere;
        k_EAuthSessionResponseVACCheckTimedOut                 :: EAuthSessionResponseVACCheckTimedOut;
        k_EAuthSessionResponseAuthTicketCanceled               :: EAuthSessionResponseAuthTicketCanceled;
        k_EAuthSessionResponseAuthTicketInvalidAlreadyUsed     :: EAuthSessionResponseAuthTicketInvalidAlreadyUsed;
        k_EAuthSessionResponseAuthTicketInvalid                :: EAuthSessionResponseAuthTicketInvalid;
        k_EAuthSessionResponsePublisherIssuedBan               :: EAuthSessionResponsePublisherIssuedBan;
        k_EAuthSessionResponseAuthTicketNetworkIdentityFailure :: EAuthSessionResponseAuthTicketNetworkIdentityFailure;
    }

    // results from UserHasLicenseForApp
    EUserHasLicenseForAppResult :: enum u32 {
        EUserHasLicenseResultHasLicense         :: 0;
        EUserHasLicenseResultDoesNotHaveLicense :: 1;
        EUserHasLicenseResultNoAuth             :: 2;

        k_EUserHasLicenseResultHasLicense         :: EUserHasLicenseResultHasLicense;
        k_EUserHasLicenseResultDoesNotHaveLicense :: EUserHasLicenseResultDoesNotHaveLicense;
        k_EUserHasLicenseResultNoAuth             :: EUserHasLicenseResultNoAuth;
    }

    // Steam account types
    EAccountType :: enum u32 {
        EAccountTypeInvalid        :: 0;
        EAccountTypeIndividual     :: 1;
        EAccountTypeMultiseat      :: 2;
        EAccountTypeGameServer     :: 3;
        EAccountTypeAnonGameServer :: 4;
        EAccountTypePending        :: 5;
        EAccountTypeContentServer  :: 6;
        EAccountTypeClan           :: 7;
        EAccountTypeChat           :: 8;
        EAccountTypeConsoleUser    :: 9;
        EAccountTypeAnonUser       :: 10;

        EAccountTypeMax            :: 11;

        k_EAccountTypeInvalid        :: EAccountTypeInvalid;
        k_EAccountTypeIndividual     :: EAccountTypeIndividual;
        k_EAccountTypeMultiseat      :: EAccountTypeMultiseat;
        k_EAccountTypeGameServer     :: EAccountTypeGameServer;
        k_EAccountTypeAnonGameServer :: EAccountTypeAnonGameServer;
        k_EAccountTypePending        :: EAccountTypePending;
        k_EAccountTypeContentServer  :: EAccountTypeContentServer;
        k_EAccountTypeClan           :: EAccountTypeClan;
        k_EAccountTypeChat           :: EAccountTypeChat;
        k_EAccountTypeConsoleUser    :: EAccountTypeConsoleUser;
        k_EAccountTypeAnonUser       :: EAccountTypeAnonUser;

        k_EAccountTypeMax            :: EAccountTypeMax;
    }

    //-----------------------------------------------------------------------------
    // Purpose: Chat Entry Types (previously was only friend-to-friend message types)
    //-----------------------------------------------------------------------------
    EChatEntryType :: enum u32 {
        EChatEntryTypeInvalid          :: 0;
        EChatEntryTypeChatMsg          :: 1;
        EChatEntryTypeTyping           :: 2;
        EChatEntryTypeInviteGame       :: 3;
        EChatEntryTypeEmote            :: 4;

        EChatEntryTypeLeftConversation :: 6;

        EChatEntryTypeEntered          :: 7;
        EChatEntryTypeWasKicked        :: 8;
        EChatEntryTypeWasBanned        :: 9;
        EChatEntryTypeDisconnected     :: 10;
        EChatEntryTypeHistoricalChat   :: 11;

        EChatEntryTypeLinkBlocked      :: 14;

        k_EChatEntryTypeInvalid          :: EChatEntryTypeInvalid;
        k_EChatEntryTypeChatMsg          :: EChatEntryTypeChatMsg;
        k_EChatEntryTypeTyping           :: EChatEntryTypeTyping;
        k_EChatEntryTypeInviteGame       :: EChatEntryTypeInviteGame;
        k_EChatEntryTypeEmote            :: EChatEntryTypeEmote;

        k_EChatEntryTypeLeftConversation :: EChatEntryTypeLeftConversation;

        k_EChatEntryTypeEntered          :: EChatEntryTypeEntered;
        k_EChatEntryTypeWasKicked        :: EChatEntryTypeWasKicked;
        k_EChatEntryTypeWasBanned        :: EChatEntryTypeWasBanned;
        k_EChatEntryTypeDisconnected     :: EChatEntryTypeDisconnected;
        k_EChatEntryTypeHistoricalChat   :: EChatEntryTypeHistoricalChat;

        k_EChatEntryTypeLinkBlocked      :: EChatEntryTypeLinkBlocked;
    }

    //-----------------------------------------------------------------------------
    // Purpose: Chat Room Enter Responses
    //-----------------------------------------------------------------------------
    EChatRoomEnterResponse :: enum u32 {
        EChatRoomEnterResponseSuccess           :: 1;
        EChatRoomEnterResponseDoesntExist       :: 2;
        EChatRoomEnterResponseNotAllowed        :: 3;
        EChatRoomEnterResponseFull              :: 4;
        EChatRoomEnterResponseError             :: 5;
        EChatRoomEnterResponseBanned            :: 6;
        EChatRoomEnterResponseLimited           :: 7;
        EChatRoomEnterResponseClanDisabled      :: 8;
        EChatRoomEnterResponseCommunityBan      :: 9;
        EChatRoomEnterResponseMemberBlockedYou  :: 10;
        EChatRoomEnterResponseYouBlockedMember  :: 11;

        EChatRoomEnterResponseRatelimitExceeded :: 15;

        k_EChatRoomEnterResponseSuccess           :: EChatRoomEnterResponseSuccess;
        k_EChatRoomEnterResponseDoesntExist       :: EChatRoomEnterResponseDoesntExist;
        k_EChatRoomEnterResponseNotAllowed        :: EChatRoomEnterResponseNotAllowed;
        k_EChatRoomEnterResponseFull              :: EChatRoomEnterResponseFull;
        k_EChatRoomEnterResponseError             :: EChatRoomEnterResponseError;
        k_EChatRoomEnterResponseBanned            :: EChatRoomEnterResponseBanned;
        k_EChatRoomEnterResponseLimited           :: EChatRoomEnterResponseLimited;
        k_EChatRoomEnterResponseClanDisabled      :: EChatRoomEnterResponseClanDisabled;
        k_EChatRoomEnterResponseCommunityBan      :: EChatRoomEnterResponseCommunityBan;
        k_EChatRoomEnterResponseMemberBlockedYou  :: EChatRoomEnterResponseMemberBlockedYou;
        k_EChatRoomEnterResponseYouBlockedMember  :: EChatRoomEnterResponseYouBlockedMember;

        k_EChatRoomEnterResponseRatelimitExceeded :: EChatRoomEnterResponseRatelimitExceeded;
    }

    // Special flags for Chat accounts - they go in the top 8 bits
    // of the steam ID's "instance", leaving 12 for the actual instances
    EChatSteamIDInstanceFlags :: enum u32 {
        EChatAccountInstanceMask  :: 4095;

        EChatInstanceFlagClan     :: 524288;
        EChatInstanceFlagLobby    :: 262144;
        EChatInstanceFlagMMSLobby :: 131072;

        k_EChatAccountInstanceMask  :: EChatAccountInstanceMask;

        k_EChatInstanceFlagClan     :: EChatInstanceFlagClan;
        k_EChatInstanceFlagLobby    :: EChatInstanceFlagLobby;
        k_EChatInstanceFlagMMSLobby :: EChatInstanceFlagMMSLobby;
    }

    //-----------------------------------------------------------------------------
    // Purpose: Possible positions to tell the overlay to show notifications in
    //-----------------------------------------------------------------------------
    ENotificationPosition :: enum s32 {
        EPositionInvalid     :: -1;
        EPositionTopLeft     :: 0;
        EPositionTopRight    :: 1;
        EPositionBottomLeft  :: 2;
        EPositionBottomRight :: 3;

        k_EPositionInvalid     :: EPositionInvalid;
        k_EPositionTopLeft     :: EPositionTopLeft;
        k_EPositionTopRight    :: EPositionTopRight;
        k_EPositionBottomLeft  :: EPositionBottomLeft;
        k_EPositionBottomRight :: EPositionBottomRight;
    }

    //-----------------------------------------------------------------------------
    // Purpose: Broadcast upload result details
    //-----------------------------------------------------------------------------
    EBroadcastUploadResult :: enum u32 {
        EBroadcastUploadResultNone              :: 0;
        EBroadcastUploadResultOK                :: 1;
        EBroadcastUploadResultInitFailed        :: 2;
        EBroadcastUploadResultFrameFailed       :: 3;
        EBroadcastUploadResultTimeout           :: 4;
        EBroadcastUploadResultBandwidthExceeded :: 5;
        EBroadcastUploadResultLowFPS            :: 6;
        EBroadcastUploadResultMissingKeyFrames  :: 7;
        EBroadcastUploadResultNoConnection      :: 8;
        EBroadcastUploadResultRelayFailed       :: 9;
        EBroadcastUploadResultSettingsChanged   :: 10;
        EBroadcastUploadResultMissingAudio      :: 11;
        EBroadcastUploadResultTooFarBehind      :: 12;
        EBroadcastUploadResultTranscodeBehind   :: 13;
        EBroadcastUploadResultNotAllowedToPlay  :: 14;
        EBroadcastUploadResultBusy              :: 15;
        EBroadcastUploadResultBanned            :: 16;
        EBroadcastUploadResultAlreadyActive     :: 17;
        EBroadcastUploadResultForcedOff         :: 18;
        EBroadcastUploadResultAudioBehind       :: 19;
        EBroadcastUploadResultShutdown          :: 20;
        EBroadcastUploadResultDisconnect        :: 21;
        EBroadcastUploadResultVideoInitFailed   :: 22;
        EBroadcastUploadResultAudioInitFailed   :: 23;

        k_EBroadcastUploadResultNone              :: EBroadcastUploadResultNone;
        k_EBroadcastUploadResultOK                :: EBroadcastUploadResultOK;
        k_EBroadcastUploadResultInitFailed        :: EBroadcastUploadResultInitFailed;
        k_EBroadcastUploadResultFrameFailed       :: EBroadcastUploadResultFrameFailed;
        k_EBroadcastUploadResultTimeout           :: EBroadcastUploadResultTimeout;
        k_EBroadcastUploadResultBandwidthExceeded :: EBroadcastUploadResultBandwidthExceeded;
        k_EBroadcastUploadResultLowFPS            :: EBroadcastUploadResultLowFPS;
        k_EBroadcastUploadResultMissingKeyFrames  :: EBroadcastUploadResultMissingKeyFrames;
        k_EBroadcastUploadResultNoConnection      :: EBroadcastUploadResultNoConnection;
        k_EBroadcastUploadResultRelayFailed       :: EBroadcastUploadResultRelayFailed;
        k_EBroadcastUploadResultSettingsChanged   :: EBroadcastUploadResultSettingsChanged;
        k_EBroadcastUploadResultMissingAudio      :: EBroadcastUploadResultMissingAudio;
        k_EBroadcastUploadResultTooFarBehind      :: EBroadcastUploadResultTooFarBehind;
        k_EBroadcastUploadResultTranscodeBehind   :: EBroadcastUploadResultTranscodeBehind;
        k_EBroadcastUploadResultNotAllowedToPlay  :: EBroadcastUploadResultNotAllowedToPlay;
        k_EBroadcastUploadResultBusy              :: EBroadcastUploadResultBusy;
        k_EBroadcastUploadResultBanned            :: EBroadcastUploadResultBanned;
        k_EBroadcastUploadResultAlreadyActive     :: EBroadcastUploadResultAlreadyActive;
        k_EBroadcastUploadResultForcedOff         :: EBroadcastUploadResultForcedOff;
        k_EBroadcastUploadResultAudioBehind       :: EBroadcastUploadResultAudioBehind;
        k_EBroadcastUploadResultShutdown          :: EBroadcastUploadResultShutdown;
        k_EBroadcastUploadResultDisconnect        :: EBroadcastUploadResultDisconnect;
        k_EBroadcastUploadResultVideoInitFailed   :: EBroadcastUploadResultVideoInitFailed;
        k_EBroadcastUploadResultAudioInitFailed   :: EBroadcastUploadResultAudioInitFailed;
    }

    //-----------------------------------------------------------------------------
    // Purpose: Reasons a user may not use the Community Market.
    //          Used in MarketEligibilityResponse_t.
    //-----------------------------------------------------------------------------
    EMarketNotAllowedReasonFlags :: enum u32 {
        None                             :: 0;

        TemporaryFailure                 :: 1;

        AccountDisabled                  :: 2;

        AccountLockedDown                :: 4;

        AccountLimited                   :: 8;

        TradeBanned                      :: 16;

        AccountNotTrusted                :: 32;

        SteamGuardNotEnabled             :: 64;

        SteamGuardOnlyRecentlyEnabled    :: 128;

        RecentPasswordReset              :: 256;

        NewPaymentMethod                 :: 512;

        InvalidCookie                    :: 1024;

        UsingNewDevice                   :: 2048;

        RecentSelfRefund                 :: 4096;

        NewPaymentMethodCannotBeVerified :: 8192;

        NoRecentPurchases                :: 16384;

        AcceptedWalletGift               :: 32768;

        k_EMarketNotAllowedReason_None                             :: None;

        k_EMarketNotAllowedReason_TemporaryFailure                 :: TemporaryFailure;

        k_EMarketNotAllowedReason_AccountDisabled                  :: AccountDisabled;

        k_EMarketNotAllowedReason_AccountLockedDown                :: AccountLockedDown;

        k_EMarketNotAllowedReason_AccountLimited                   :: AccountLimited;

        k_EMarketNotAllowedReason_TradeBanned                      :: TradeBanned;

        k_EMarketNotAllowedReason_AccountNotTrusted                :: AccountNotTrusted;

        k_EMarketNotAllowedReason_SteamGuardNotEnabled             :: SteamGuardNotEnabled;

        k_EMarketNotAllowedReason_SteamGuardOnlyRecentlyEnabled    :: SteamGuardOnlyRecentlyEnabled;

        k_EMarketNotAllowedReason_RecentPasswordReset              :: RecentPasswordReset;

        k_EMarketNotAllowedReason_NewPaymentMethod                 :: NewPaymentMethod;

        k_EMarketNotAllowedReason_InvalidCookie                    :: InvalidCookie;

        k_EMarketNotAllowedReason_UsingNewDevice                   :: UsingNewDevice;

        k_EMarketNotAllowedReason_RecentSelfRefund                 :: RecentSelfRefund;

        k_EMarketNotAllowedReason_NewPaymentMethodCannotBeVerified :: NewPaymentMethodCannotBeVerified;

        k_EMarketNotAllowedReason_NoRecentPurchases                :: NoRecentPurchases;

        k_EMarketNotAllowedReason_AcceptedWalletGift               :: AcceptedWalletGift;
    }

    //
    // describes XP / progress restrictions to apply for games with duration control /
    // anti-indulgence enabled for minor Steam China users.
    //
    // WARNING: DO NOT RENUMBER
    EDurationControlProgress :: enum u32 {
        EDurationControlProgress_Full   :: 0;
        EDurationControlProgress_Half   :: 1;
        EDurationControlProgress_None   :: 2;

        EDurationControl_ExitSoon_3h    :: 3;
        EDurationControl_ExitSoon_5h    :: 4;
        EDurationControl_ExitSoon_Night :: 5;

        k_EDurationControlProgress_Full   :: EDurationControlProgress_Full;
        k_EDurationControlProgress_Half   :: EDurationControlProgress_Half;
        k_EDurationControlProgress_None   :: EDurationControlProgress_None;

        k_EDurationControl_ExitSoon_3h    :: EDurationControl_ExitSoon_3h;
        k_EDurationControl_ExitSoon_5h    :: EDurationControl_ExitSoon_5h;
        k_EDurationControl_ExitSoon_Night :: EDurationControl_ExitSoon_Night;
    }

    //
    // describes which notification timer has expired, for steam china duration control feature
    //
    // WARNING: DO NOT RENUMBER
    EDurationControlNotification :: enum u32 {
        None           :: 0;
        _1Hour         :: 1;

        _3Hours        :: 2;
        HalfProgress   :: 3;
        NoProgress     :: 4;

        ExitSoon_3h    :: 5;
        ExitSoon_5h    :: 6;
        ExitSoon_Night :: 7;

        k_EDurationControlNotification_None           :: None;
        k_EDurationControlNotification_1Hour          :: _1Hour;

        k_EDurationControlNotification_3Hours         :: _3Hours;
        k_EDurationControlNotification_HalfProgress   :: HalfProgress;
        k_EDurationControlNotification_NoProgress     :: NoProgress;

        k_EDurationControlNotification_ExitSoon_3h    :: ExitSoon_3h;
        k_EDurationControlNotification_ExitSoon_5h    :: ExitSoon_5h;
        k_EDurationControlNotification_ExitSoon_Night :: ExitSoon_Night;
    }

    //
    // Specifies a game's online state in relation to duration control
    //
    EDurationControlOnlineState :: enum u32 {
        Invalid       :: 0;
        Offline       :: 1;
        Online        :: 2;
        OnlineHighPri :: 3;

        k_EDurationControlOnlineState_Invalid       :: Invalid;
        k_EDurationControlOnlineState_Offline       :: Offline;
        k_EDurationControlOnlineState_Online        :: Online;
        k_EDurationControlOnlineState_OnlineHighPri :: OnlineHighPri;
    }

    // Steam ID structure (64 bits total)
    CSteamID :: struct {
        // 64 bits total
        SteamID_t :: union {
            SteamIDComponent_t :: struct {
                __bitfield: [8] u8;
                /*
                    m_unAccountID: uint32; /* 32 bits */ // unique account identifier
                    m_unAccountInstance: u32; /* 20 bits */ // dynamic instance ID
                    m_EAccountType: u32; /* 4 bits */ // type of account - can't show as EAccountType, due to signed / unsigned difference
                    m_EUniverse: EUniverse; /* 8 bits */ // universe this account belongs to;
                */
            }

            m_comp:        SteamIDComponent_t;

            m_unAll64Bits: uint64 #align 1;
        }

        m_steamid: SteamID_t;
    }

    EGameSearchErrorCode_t :: enum u32 {
        OK                                :: 1;
        Failed_Search_Already_In_Progress :: 2;
        Failed_No_Search_In_Progress      :: 3;
        Failed_Not_Lobby_Leader           :: 4;
        Failed_No_Host_Available          :: 5;
        Failed_Search_Params_Invalid      :: 6;
        Failed_Offline                    :: 7;
        Failed_NotAuthorized              :: 8;
        Failed_Unknown_Error              :: 9;

        k_EGameSearchErrorCode_OK                                :: OK;
        k_EGameSearchErrorCode_Failed_Search_Already_In_Progress :: Failed_Search_Already_In_Progress;
        k_EGameSearchErrorCode_Failed_No_Search_In_Progress      :: Failed_No_Search_In_Progress;
        k_EGameSearchErrorCode_Failed_Not_Lobby_Leader           :: Failed_Not_Lobby_Leader;
        k_EGameSearchErrorCode_Failed_No_Host_Available          :: Failed_No_Host_Available;
        k_EGameSearchErrorCode_Failed_Search_Params_Invalid      :: Failed_Search_Params_Invalid;
        k_EGameSearchErrorCode_Failed_Offline                    :: Failed_Offline;
        k_EGameSearchErrorCode_Failed_NotAuthorized              :: Failed_NotAuthorized;
        k_EGameSearchErrorCode_Failed_Unknown_Error              :: Failed_Unknown_Error;
    }

    EPlayerResult_t :: enum u32 {
        EPlayerResultFailedToConnect :: 1;
        EPlayerResultAbandoned       :: 2;
        EPlayerResultKicked          :: 3;
        EPlayerResultIncomplete      :: 4;
        EPlayerResultCompleted       :: 5;

        k_EPlayerResultFailedToConnect :: EPlayerResultFailedToConnect;
        k_EPlayerResultAbandoned       :: EPlayerResultAbandoned;
        k_EPlayerResultKicked          :: EPlayerResultKicked;
        k_EPlayerResultIncomplete      :: EPlayerResultIncomplete;
        k_EPlayerResultCompleted       :: EPlayerResultCompleted;
    }

    ESteamIPv6ConnectivityProtocol :: enum u32 {
        Invalid :: 0;
        HTTP    :: 1;
        UDP     :: 2;

        k_ESteamIPv6ConnectivityProtocol_Invalid :: Invalid;
        k_ESteamIPv6ConnectivityProtocol_HTTP    :: HTTP;
        k_ESteamIPv6ConnectivityProtocol_UDP     :: UDP;
    }

    // For the above transport protocol, what do we think the local machine's connectivity to the internet over ipv6 is like
    ESteamIPv6ConnectivityState :: enum u32 {
        Unknown :: 0;
        Good    :: 1;
        Bad     :: 2;

        k_ESteamIPv6ConnectivityState_Unknown :: Unknown;
        k_ESteamIPv6ConnectivityState_Good    :: Good;
        k_ESteamIPv6ConnectivityState_Bad     :: Bad;
    }

    SteamDatagramRelayAuthTicket :: struct {}
    SteamDatagramHostedAddress :: struct {}
    SteamDatagramGameCoordinatorServerLogin :: struct {}

    SteamNetworkingFakeIPResult_t :: struct {}

    FnSteamNetConnectionStatusChanged :: #type (unknown0: *SteamNetConnectionStatusChangedCallback_t) -> void #c_call;
    FnSteamNetAuthenticationStatusChanged :: #type (unknown0: *SteamNetAuthenticationStatus_t) -> void #c_call;
    FnSteamRelayNetworkStatusChanged :: #type (unknown0: *SteamRelayNetworkStatus_t) -> void #c_call;
    FnSteamNetworkingMessagesSessionRequest :: #type (unknown0: *SteamNetworkingMessagesSessionRequest_t) -> void #c_call;
    FnSteamNetworkingMessagesSessionFailed :: #type (unknown0: *SteamNetworkingMessagesSessionFailed_t) -> void #c_call;
    FnSteamNetworkingFakeIPResult :: #type (unknown0: *SteamNetworkingFakeIPResult_t) -> void #c_call;

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

    /// Different methods of describing the identity of a network host
    ESteamNetworkingIdentityType :: enum u32 {
        Invalid        :: 0;

        SteamID        :: 16;
        XboxPairwiseID :: 17;
        SonyPSN        :: 18;

        IPAddress      :: 1;

        GenericString  :: 2;
        GenericBytes   :: 3;

        UnknownType    :: 4;

        Force32bit     :: 2147483647;

        k_ESteamNetworkingIdentityType_Invalid        :: Invalid;

        k_ESteamNetworkingIdentityType_SteamID        :: SteamID;
        k_ESteamNetworkingIdentityType_XboxPairwiseID :: XboxPairwiseID;
        k_ESteamNetworkingIdentityType_SonyPSN        :: SonyPSN;

        k_ESteamNetworkingIdentityType_IPAddress      :: IPAddress;

        k_ESteamNetworkingIdentityType_GenericString  :: GenericString;
        k_ESteamNetworkingIdentityType_GenericBytes   :: GenericBytes;

        k_ESteamNetworkingIdentityType_UnknownType    :: UnknownType;

        k_ESteamNetworkingIdentityType__Force32bit    :: Force32bit;
    }

    /// "Fake IPs" are assigned to hosts, to make it easier to interface with
    /// older code that assumed all hosts will have an IPv4 address
    ESteamNetworkingFakeIPType :: enum u32 {
        Invalid    :: 0;
        NotFake    :: 1;
        GlobalIPv4 :: 2;
        LocalIPv4  :: 3;

        Force32Bit :: 2147483647;

        k_ESteamNetworkingFakeIPType_Invalid     :: Invalid;
        k_ESteamNetworkingFakeIPType_NotFake     :: NotFake;
        k_ESteamNetworkingFakeIPType_GlobalIPv4  :: GlobalIPv4;
        k_ESteamNetworkingFakeIPType_LocalIPv4   :: LocalIPv4;

        k_ESteamNetworkingFakeIPType__Force32Bit :: Force32Bit;
    }

    /// Store an IP and port.  IPv6 is always used; IPv4 is represented using
    /// "IPv4-mapped" addresses: IPv4 aa.bb.cc.dd => IPv6 ::ffff:aabb:ccdd
    /// (RFC 4291 section 2.5.5.2.)
    SteamNetworkingIPAddr :: struct {
        // Max length of the buffer needed to hold IP formatted using ToString, including '\0'
        // ([0123:4567:89ab:cdef:0123:4567:89ab:cdef]:12345)
        anon_enum :: enum u32 {
            k_cchMaxString :: 48;
        }

        /// RFC4038, section 4.2
        IPv4MappedAddress :: struct {
            m_8zeros: uint64 #align 1;
            m_0000:   uint16 #align 1;
            m_ffff:   uint16 #align 1;
            m_ip:     [4] uint8; // NOTE: As bytes, i.e. network byte order
        }

        union {
            m_ipv6: [16] uint8;
            m_ipv4: IPv4MappedAddress;
        }

        m_port: uint16 #align 1; // Host byte order
    }

    /// An abstract way to represent the identity of a network host.  All identities can
    /// be represented as simple string.  Furthermore, this string representation is actually
    /// used on the wire in several places, even though it is less efficient, in order to
    /// facilitate forward compatibility.  (Old client code can handle an identity type that
    /// it doesn't understand.)
    SteamNetworkingIdentity :: struct {
        /// Type of identity.
        m_eType:  ESteamNetworkingIdentityType #align 1;

        // Max sizes
        k :: enum u32 {
            cchMaxString         :: 128;
            cchMaxGenericString  :: 32;
            cchMaxXboxPairwiseID :: 33;
            cbMaxGenericBytes    :: 32;

            k_cchMaxString         :: cchMaxString;
            k_cchMaxGenericString  :: cchMaxGenericString;
            k_cchMaxXboxPairwiseID :: cchMaxXboxPairwiseID;
            k_cbMaxGenericBytes    :: cbMaxGenericBytes;
        }

        //
        // Internal representation.  Don't access this directly, use the accessors!
        //
        // Number of bytes that are relevant below.  This MUST ALWAYS be
        // set.  (Use the accessors!)  This is important to enable old code to work
        // with new identity types.
        m_cbSize: s32 #align 1;
        union {
            m_steamID64:          uint64 #align 1;
            m_PSNID:              uint64 #align 1;
            m_szGenericString:    [32] u8;
            m_szXboxPairwiseID:   [33] u8;
            m_genericBytes:       [32] uint8;
            m_szUnknownRawString: [128] u8;
            m_ip:                 SteamNetworkingIPAddr;
            m_reserved:           [32] uint32 #align 1; // Pad structure to leave easy room for future expansion
        }
    }

    /// High level connection status
    ESteamNetworkingConnectionState :: enum s32 {
        None                   :: 0;

        Connecting             :: 1;

        FindingRoute           :: 2;

        Connected              :: 3;

        ClosedByPeer           :: 4;

        ProblemDetectedLocally :: 5;

        FinWait                :: -1;

        Linger                 :: -2;

        Dead                   :: -3;

        Force32Bit             :: 2147483647;

        k_ESteamNetworkingConnectionState_None                   :: None;

        k_ESteamNetworkingConnectionState_Connecting             :: Connecting;

        k_ESteamNetworkingConnectionState_FindingRoute           :: FindingRoute;

        k_ESteamNetworkingConnectionState_Connected              :: Connected;

        k_ESteamNetworkingConnectionState_ClosedByPeer           :: ClosedByPeer;

        k_ESteamNetworkingConnectionState_ProblemDetectedLocally :: ProblemDetectedLocally;

        k_ESteamNetworkingConnectionState_FinWait                :: FinWait;

        k_ESteamNetworkingConnectionState_Linger                 :: Linger;

        k_ESteamNetworkingConnectionState_Dead                   :: Dead;

        k_ESteamNetworkingConnectionState__Force32Bit            :: Force32Bit;
    }

    /// Enumerate various causes of connection termination.  These are designed to work similar
    /// to HTTP error codes: the numeric range gives you a rough classification as to the source
    /// of the problem.
    ESteamNetConnectionEnd :: enum u32 {
        Invalid                          :: 0;

        App_Min                          :: 1000;
        App_Generic                      :: 1000;

        App_Max                          :: 1999;

        AppException_Min                 :: 2000;
        AppException_Generic             :: 2000;

        AppException_Max                 :: 2999;

        Local_Min                        :: 3000;

        Local_OfflineMode                :: 3001;

        Local_ManyRelayConnectivity      :: 3002;

        Local_HostedServerPrimaryRelay   :: 3003;

        Local_NetworkConfig              :: 3004;

        Local_Rights                     :: 3005;

        Local_P2P_ICE_NoPublicAddresses  :: 3006;

        Local_Max                        :: 3999;

        Remote_Min                       :: 4000;

        Remote_Timeout                   :: 4001;

        Remote_BadCrypt                  :: 4002;

        Remote_BadCert                   :: 4003;

        Remote_BadProtocolVersion        :: 4006;

        Remote_P2P_ICE_NoPublicAddresses :: 4007;

        Remote_Max                       :: 4999;

        Misc_Min                         :: 5000;

        Misc_Generic                     :: 5001;

        Misc_InternalError               :: 5002;

        Misc_Timeout                     :: 5003;

        Misc_SteamConnectivity           :: 5005;

        Misc_NoRelaySessionsToClient     :: 5006;

        Misc_P2P_Rendezvous              :: 5008;

        Misc_P2P_NAT_Firewall            :: 5009;

        Misc_PeerSentNoConnection        :: 5010;

        Misc_Max                         :: 5999;

        Force32Bit                       :: 2147483647;

        k_ESteamNetConnectionEnd_Invalid                          :: Invalid;

        k_ESteamNetConnectionEnd_App_Min                          :: App_Min;
        k_ESteamNetConnectionEnd_App_Generic                      :: App_Generic;

        k_ESteamNetConnectionEnd_App_Max                          :: App_Max;

        k_ESteamNetConnectionEnd_AppException_Min                 :: AppException_Min;
        k_ESteamNetConnectionEnd_AppException_Generic             :: AppException_Generic;

        k_ESteamNetConnectionEnd_AppException_Max                 :: AppException_Max;

        k_ESteamNetConnectionEnd_Local_Min                        :: Local_Min;

        k_ESteamNetConnectionEnd_Local_OfflineMode                :: Local_OfflineMode;

        k_ESteamNetConnectionEnd_Local_ManyRelayConnectivity      :: Local_ManyRelayConnectivity;

        k_ESteamNetConnectionEnd_Local_HostedServerPrimaryRelay   :: Local_HostedServerPrimaryRelay;

        k_ESteamNetConnectionEnd_Local_NetworkConfig              :: Local_NetworkConfig;

        k_ESteamNetConnectionEnd_Local_Rights                     :: Local_Rights;

        k_ESteamNetConnectionEnd_Local_P2P_ICE_NoPublicAddresses  :: Local_P2P_ICE_NoPublicAddresses;

        k_ESteamNetConnectionEnd_Local_Max                        :: Local_Max;

        k_ESteamNetConnectionEnd_Remote_Min                       :: Remote_Min;

        k_ESteamNetConnectionEnd_Remote_Timeout                   :: Remote_Timeout;

        k_ESteamNetConnectionEnd_Remote_BadCrypt                  :: Remote_BadCrypt;

        k_ESteamNetConnectionEnd_Remote_BadCert                   :: Remote_BadCert;

        k_ESteamNetConnectionEnd_Remote_BadProtocolVersion        :: Remote_BadProtocolVersion;

        k_ESteamNetConnectionEnd_Remote_P2P_ICE_NoPublicAddresses :: Remote_P2P_ICE_NoPublicAddresses;

        k_ESteamNetConnectionEnd_Remote_Max                       :: Remote_Max;

        k_ESteamNetConnectionEnd_Misc_Min                         :: Misc_Min;

        k_ESteamNetConnectionEnd_Misc_Generic                     :: Misc_Generic;

        k_ESteamNetConnectionEnd_Misc_InternalError               :: Misc_InternalError;

        k_ESteamNetConnectionEnd_Misc_Timeout                     :: Misc_Timeout;

        k_ESteamNetConnectionEnd_Misc_SteamConnectivity           :: Misc_SteamConnectivity;

        k_ESteamNetConnectionEnd_Misc_NoRelaySessionsToClient     :: Misc_NoRelaySessionsToClient;

        k_ESteamNetConnectionEnd_Misc_P2P_Rendezvous              :: Misc_P2P_Rendezvous;

        k_ESteamNetConnectionEnd_Misc_P2P_NAT_Firewall            :: Misc_P2P_NAT_Firewall;

        k_ESteamNetConnectionEnd_Misc_PeerSentNoConnection        :: Misc_PeerSentNoConnection;

        k_ESteamNetConnectionEnd_Misc_Max                         :: Misc_Max;

        k_ESteamNetConnectionEnd__Force32Bit                      :: Force32Bit;
    }

    /// Describe the state of a connection.
    SteamNetConnectionInfo_t :: struct {
        /// Who is on the other end?  Depending on the connection type and phase of the connection, we might not know
        m_identityRemote:          SteamNetworkingIdentity;

        /// Arbitrary user data set by the local application code
        m_nUserData:               int64 #align 4;

        /// Handle to listen socket this was connected on, or k_HSteamListenSocket_Invalid if we initiated the connection
        m_hListenSocket:           HSteamListenSocket;

        /// Remote address.  Might be all 0's if we don't know it, or if this is N/A.
        /// (E.g. Basically everything except direct UDP connection.)
        m_addrRemote:              SteamNetworkingIPAddr;
        m__pad1:                   uint16;

        /// What data center is the remote host in?  (0 if we don't know.)
        m_idPOPRemote:             SteamNetworkingPOPID;

        /// What relay are we using to communicate with the remote host?
        /// (0 if not applicable.)
        m_idPOPRelay:              SteamNetworkingPOPID;

        /// High level state of the connection
        m_eState:                  ESteamNetworkingConnectionState;

        /// Basic cause of the connection termination or problem.
        /// See ESteamNetConnectionEnd for the values used
        m_eEndReason:              s32;

        /// Human-readable, but non-localized explanation for connection
        /// termination or problem.  This is intended for debugging /
        /// diagnostic purposes only, not to display to users.  It might
        /// have some details specific to the issue.
        m_szEndDebug:              [128] u8;

        /// Debug description.  This includes the internal connection ID,
        /// connection type (and peer information), and any name
        /// given to the connection by the app.  This string is used in various
        /// internal logging messages.
        m_szConnectionDescription: [128] u8;

        /// Misc flags.  Bitmask of k_nSteamNetworkConnectionInfoFlags_Xxxx
        m_nFlags:                  s32;

        /// Internal stuff, room to change API easily
        reserved:                  [63] uint32;
    }

    /// Quick connection state, pared down to something you could call
    /// more frequently without it being too big of a perf hit.
    SteamNetConnectionRealTimeStatus_t :: struct {
        /// High level state of the connection
        m_eState:                    ESteamNetworkingConnectionState;

        /// Current ping (ms)
        m_nPing:                     s32;

        /// Connection quality measured locally, 0...1.  (Percentage of packets delivered
        /// end-to-end in order).
        m_flConnectionQualityLocal:  float;

        /// Packet delivery success rate as observed from remote host
        m_flConnectionQualityRemote: float;

        /// Current data rates from recent history.
        m_flOutPacketsPerSec:        float;
        m_flOutBytesPerSec:          float;
        m_flInPacketsPerSec:         float;
        m_flInBytesPerSec:           float;

        /// Estimate rate that we believe that we can send data to our peer.
        /// Note that this could be significantly higher than m_flOutBytesPerSec,
        /// meaning the capacity of the channel is higher than you are sending data.
        /// (That's OK!)
        m_nSendRateBytesPerSecond:   s32;

        /// Number of bytes pending to be sent.  This is data that you have recently
        /// requested to be sent but has not yet actually been put on the wire.  The
        /// reliable number ALSO includes data that was previously placed on the wire,
        /// but has now been scheduled for re-transmission.  Thus, it's possible to
        /// observe m_cbPendingReliable increasing between two checks, even if no
        /// calls were made to send reliable data between the checks.  Data that is
        /// awaiting the Nagle delay will appear in these numbers.
        m_cbPendingUnreliable:       s32;
        m_cbPendingReliable:         s32;

        /// Number of bytes of reliable data that has been placed the wire, but
        /// for which we have not yet received an acknowledgment, and thus we may
        /// have to re-transmit.
        m_cbSentUnackedReliable:     s32;

        /// If you queued a message right now, approximately how long would that message
        /// wait in the queue before we actually started putting its data on the wire in
        /// a packet?
        ///
        /// In general, data that is sent by the application is limited by the bandwidth
        /// of the channel.  If you send data faster than this, it must be queued and
        /// put on the wire at a metered rate.  Even sending a small amount of data (e.g.
        /// a few MTU, say ~3k) will require some of the data to be delayed a bit.
        ///
        /// Ignoring multiple lanes, the estimated delay will be approximately equal to
        ///
        ///		( m_cbPendingUnreliable+m_cbPendingReliable ) / m_nSendRateBytesPerSecond
        ///
        /// plus or minus one MTU.  It depends on how much time has elapsed since the last
        /// packet was put on the wire.  For example, the queue might have *just* been emptied,
        /// and the last packet placed on the wire, and we are exactly up against the send
        /// rate limit.  In that case we might need to wait for one packet's worth of time to
        /// elapse before we can send again.  On the other extreme, the queue might have data
        /// in it waiting for Nagle.  (This will always be less than one packet, because as
        /// soon as we have a complete packet we would send it.)  In that case, we might be
        /// ready to send data now, and this value will be 0.
        ///
        /// This value is only valid if multiple lanes are not used.  If multiple lanes are
        /// in use, then the queue time will be different for each lane, and you must use
        /// the value in SteamNetConnectionRealTimeLaneStatus_t.
        ///
        /// Nagle delay is ignored for the purposes of this calculation.
        m_usecQueueTime:             SteamNetworkingMicroseconds #align 4;

        // Internal stuff, room to change API easily
        reserved:                    [16] uint32;
    }

    /// Quick status of a particular lane
    SteamNetConnectionRealTimeLaneStatus_t :: struct {
        // Counters for this particular lane.  See the corresponding variables
        // in SteamNetConnectionRealTimeStatus_t
        m_cbPendingUnreliable:   s32;
        m_cbPendingReliable:     s32;
        m_cbSentUnackedReliable: s32;
        _reservePad1:            s32; // Reserved for future use

        /// Lane-specific queue time.  This value takes into consideration lane priorities
        /// and weights, and how much data is queued in each lane, and attempts to predict
        /// how any data currently queued will be sent out.
        m_usecQueueTime:         SteamNetworkingMicroseconds #align 4;

        // Internal stuff, room to change API easily
        reserved:                [10] uint32;
    }

    /// A message that has been received.
    SteamNetworkingMessage_t :: struct {
        /// Message payload
        m_pData:            *void;

        /// Size of the payload.
        m_cbSize:           s32;

        /// For messages received on connections: what connection did this come from?
        /// For outgoing messages: what connection to send it to?
        /// Not used when using the ISteamNetworkingMessages interface
        m_conn:             HSteamNetConnection;

        /// For inbound messages: Who sent this to us?
        /// For outbound messages on connections: not used.
        /// For outbound messages on the ad-hoc ISteamNetworkingMessages interface: who should we send this to?
        m_identityPeer:     SteamNetworkingIdentity;

        /// For messages received on connections, this is the user data
        /// associated with the connection.
        ///
        /// This is *usually* the same as calling GetConnection() and then
        /// fetching the user data associated with that connection, but for
        /// the following subtle differences:
        ///
        /// - This user data will match the connection's user data at the time
        ///   is captured at the time the message is returned by the API.
        ///   If you subsequently change the userdata on the connection,
        ///   this won't be updated.
        /// - This is an inline call, so it's *much* faster.
        /// - You might have closed the connection, so fetching the user data
        ///   would not be possible.
        ///
        /// Not used when sending messages.
        m_nConnUserData:    int64;

        /// Local timestamp when the message was received
        /// Not used for outbound messages.
        m_usecTimeReceived: SteamNetworkingMicroseconds;

        /// Message number assigned by the sender.  This is not used for outbound
        /// messages.  Note that if multiple lanes are used, each lane has its own
        /// message numbers, which are assigned sequentially, so messages from
        /// different lanes will share the same numbers.
        m_nMessageNumber:   int64;

        /// Function used to free up m_pData.  This mechanism exists so that
        /// apps can create messages with buffers allocated from their own
        /// heap, and pass them into the library.  This function will
        /// usually be something like:
        ///
        /// free( pMsg->m_pData );
        m_pfnFreeData:      #type (pMsg: *SteamNetworkingMessage_t) -> void #c_call;

        /// Function to used to decrement the internal reference count and, if
        /// it's zero, release the message.  You should not set this function pointer,
        /// or need to access this directly!  Use the Release() function instead!
        m_pfnRelease:       #type (pMsg: *SteamNetworkingMessage_t) -> void #c_call;

        /// When using ISteamNetworkingMessages, the channel number the message was received on
        /// (Not used for messages sent or received on "connections")
        m_nChannel:         s32;

        /// Bitmask of k_nSteamNetworkingSend_xxx flags.
        /// For received messages, only the k_nSteamNetworkingSend_Reliable bit is valid.
        /// For outbound messages, all bits are relevant
        m_nFlags:           s32;

        /// Arbitrary user data that you can use when sending messages using
        /// ISteamNetworkingUtils::AllocateMessage and ISteamNetworkingSockets::SendMessage.
        /// (The callback you set in m_pfnFreeData might use this field.)
        ///
        /// Not used for received messages.
        m_nUserData:        int64;

        /// For outbound messages, which lane to use?  See ISteamNetworkingSockets::ConfigureConnectionLanes.
        /// For inbound messages, what lane was the message received on?
        m_idxLane:          uint16;
        _pad1__:            uint16;
    }

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
    SteamNetworkPingLocation_t :: struct {
        m_data: [512] uint8;
    }

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
    SteamNetworkingConfigValue_t :: struct {
        /// Which option is being set
        m_eValue:    ESteamNetworkingConfigValue;

        /// Which field below did you fill in?
        m_eDataType: ESteamNetworkingConfigDataType;

        m_val:       union {
            m_int32:  s32;
            m_int64:  s64;
            m_float:  float;
            m_string: *u8; // Points to your '\0'-terminated buffer
            m_ptr:    *void;
        };
    }

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

    anon_enum_1 :: enum u32 {
        k_iSteamNetworkingSocketsCallbacks :: 1220;
    }
    anon_enum_2 :: enum u32 {
        k_iSteamNetworkingMessagesCallbacks :: 1250;
    }
    anon_enum_3 :: enum u32 {
        k_iSteamNetworkingUtilsCallbacks :: 1280;
    }

    //-----------------------------------------------------------------------------
    /// The non-connection-oriented interface to send and receive messages
    /// (whether they be "clients" or "servers").
    ///
    /// ISteamNetworkingSockets is connection-oriented (like TCP), meaning you
    /// need to listen and connect, and then you send messages using a connection
    /// handle.  ISteamNetworkingMessages is more like UDP, in that you can just send
    /// messages to arbitrary peers at any time.  The underlying connections are
    /// established implicitly.
    ///
    /// Under the hood ISteamNetworkingMessages works on top of the ISteamNetworkingSockets
    /// code, so you get the same routing and messaging efficiency.  The difference is
    /// mainly in your responsibility to explicitly establish a connection and
    /// the type of feedback you get about the state of the connection.  Both
    /// interfaces can do "P2P" communications, and both support both unreliable
    /// and reliable messages, fragmentation and reassembly.
    ///
    /// The primary purpose of this interface is to be "like UDP", so that UDP-based code
    /// can be ported easily to take advantage of relayed connections.  If you find
    /// yourself needing more low level information or control, or to be able to better
    /// handle failure, then you probably need to use ISteamNetworkingSockets directly.
    /// Also, note that if your main goal is to obtain a connection between two peers
    /// without concerning yourself with assigning roles of "client" and "server",
    /// you may find the symmetric connection mode of ISteamNetworkingSockets useful.
    /// (See k_ESteamNetworkingConfig_SymmetricConnect.)
    ///
    ISteamNetworkingMessages :: struct {
        vtable: *ISteamNetworkingMessages_VTable;
    }
    ISteamNetworkingMessages_VTable :: struct #type_info_none {
        SendMessageToUser: *void;

        ReceiveMessagesOnChannel: *void;

        AcceptSessionWithUser: *void;

        CloseSessionWithUser: *void;

        CloseChannelWithUser: *void;

        GetSessionConnectionInfo: *void;
    }


    /// Posted when a remote host is sending us a message, and we do not already have a session with them
    SteamNetworkingMessagesSessionRequest_t :: struct {
        anon_enum_4 :: enum u32 {
            k_iCallback :: 1251;
        }
        m_identityRemote: SteamNetworkingIdentity; // user who wants to talk to us
    }

    /// Posted when we fail to establish a connection, or we detect that communications
    /// have been disrupted it an unusual way.  There is no notification when a peer proactively
    /// closes the session.  ("Closed by peer" is not a concept of UDP-style communications, and
    /// SteamNetworkingMessages is primarily intended to make porting UDP code easy.)
    ///
    /// Remember: callbacks are asynchronous.   See notes on SendMessageToUser,
    /// and k_nSteamNetworkingSend_AutoRestartBrokenSession in particular.
    ///
    /// Also, if a session times out due to inactivity, no callbacks will be posted.  The only
    /// way to detect that this is happening is that querying the session state may return
    /// none, connecting, and findingroute again.
    SteamNetworkingMessagesSessionFailed_t :: struct {
        anon_enum_5 :: enum u32 {
            k_iCallback :: 1252;
        }

        /// Detailed info about the session that failed.
        /// SteamNetConnectionInfo_t::m_identityRemote indicates who this session
        /// was with.
        m_info: SteamNetConnectionInfo_t #align 1;
    }

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
    SteamNetConnectionStatusChangedCallback_t :: struct {
        anon_enum_6 :: enum u32 {
            k_iCallback :: 1221;
        }

        /// Connection handle
        m_hConn:     HSteamNetConnection;

        /// Full connection info
        m_info:      SteamNetConnectionInfo_t;

        /// Previous state.  (Current state is in m_info.m_eState)
        m_eOldState: ESteamNetworkingConnectionState;
    }

    /// A struct used to describe our readiness to participate in authenticated,
    /// encrypted communication.  In order to do this we need:
    ///
    /// - The list of trusted CA certificates that might be relevant for this
    ///   app.
    /// - A valid certificate issued by a CA.
    ///
    /// This callback is posted whenever the state of our readiness changes.
    SteamNetAuthenticationStatus_t :: struct {
        anon_enum_7 :: enum u32 {
            k_iCallback :: 1222;
        }

        /// Status
        m_eAvail:   ESteamNetworkingAvailability;

        /// Non-localized English language status.  For diagnostic/debugging
        /// purposes only.
        m_debugMsg: [256] u8;
    }

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


    /// A struct used to describe our readiness to use the relay network.
    /// To do this we first need to fetch the network configuration,
    /// which describes what POPs are available.
    SteamRelayNetworkStatus_t :: struct {
        anon_enum_8 :: enum u32 {
            k_iCallback :: 1281;
        }

        /// Summary status.  When this is "current", initialization has
        /// completed.  Anything else means you are not ready yet, or
        /// there is a significant problem.
        m_eAvail:                     ESteamNetworkingAvailability;

        /// Nonzero if latency measurement is in progress (or pending,
        /// awaiting a prerequisite).
        m_bPingMeasurementInProgress: s32;

        /// Status obtaining the network config.  This is a prerequisite
        /// for relay network access.
        ///
        /// Failure to obtain the network config almost always indicates
        /// a problem with the local internet connection.
        m_eAvailNetworkConfig:        ESteamNetworkingAvailability;

        /// Current ability to communicate with ANY relay.  Note that
        /// the complete failure to communicate with any relays almost
        /// always indicates a problem with the local Internet connection.
        /// (However, just because you can reach a single relay doesn't
        /// mean that the local connection is in perfect health.)
        m_eAvailAnyRelay:             ESteamNetworkingAvailability;

        /// Non-localized English language status.  For diagnostic/debugging
        /// purposes only.
        m_debugMsg:                   [256] u8;
    }

    /// Interface used to send signaling messages for a particular connection.
    ///
    /// - For connections initiated locally, you will construct it and pass
    ///   it to ISteamNetworkingSockets::ConnectP2PCustomSignaling.
    /// - For connections initiated remotely and "accepted" locally, you
    ///   will return it from ISteamNetworkingSignalingRecvContext::OnConnectRequest
    ISteamNetworkingConnectionSignaling :: struct {
        vtable: *ISteamNetworkingConnectionSignaling_VTable;
    }
    ISteamNetworkingConnectionSignaling_VTable :: struct #type_info_none {
        SendSignal: *void;

        Release: *void;
    }


    /// Interface used when a custom signal is received.
    /// See ISteamNetworkingSockets::ReceivedP2PCustomSignal
    ISteamNetworkingSignalingRecvContext :: struct {
        vtable: *ISteamNetworkingSignalingRecvContext_VTable;
    }
    ISteamNetworkingSignalingRecvContext_VTable :: struct #type_info_none {
        OnConnectRequest: *void;

        SendRejectionSignal: *void;
    }


    uint64_steamid :: uint64;
}

SteamNetworkingMessages_LibV2 :: () -> *ISteamNetworkingMessages #foreign libgamenetworkingsockets;

SteamNetworkingSockets_LibV12 :: () -> *ISteamNetworkingSockets #foreign libgamenetworkingsockets;

SteamNetworkingUtils_LibV4 :: () -> *ISteamNetworkingUtils #foreign libgamenetworkingsockets;

// Call direct to static functions
SteamNetworkingIPAddr_ToString :: (pAddr: *SteamNetworkingIPAddr, buf: *u8, cbBuf: u64, bWithPort: bool) -> void #foreign libgamenetworkingsockets;
SteamNetworkingIPAddr_ParseString :: (pAddr: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign libgamenetworkingsockets;
SteamNetworkingIPAddr_GetFakeIPType :: (pAddr: *SteamNetworkingIPAddr) -> ESteamNetworkingFakeIPType #foreign libgamenetworkingsockets;
SteamNetworkingIdentity_ToString :: (pIdentity: *SteamNetworkingIdentity, buf: *u8, cbBuf: u64) -> void #foreign libgamenetworkingsockets;
SteamNetworkingIdentity_ParseString :: (pIdentity: *SteamNetworkingIdentity, sizeofIdentity: u64, pszStr: *u8) -> bool #foreign libgamenetworkingsockets;


// ISteamNetworkingSockets
SteamSockets_SteamNetworkingSockets_v009 :: () -> *ISteamNetworkingSockets #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_CreateListenSocketIP :: (self: *ISteamNetworkingSockets, localAddress: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #no_context {
    return SteamSockets_ISteamNetworkingSockets_CreateListenSocketIP(self, *localAddress, nOptions, pOptions);
}
SteamSockets_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: *SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ConnectByIPAddress :: (self: *ISteamNetworkingSockets, address: SteamNetworkingIPAddr, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamSockets_ISteamNetworkingSockets_ConnectByIPAddress(self, *address, nOptions, pOptions);
}
SteamSockets_ISteamNetworkingSockets_CreateListenSocketP2P :: (self: *ISteamNetworkingSockets, nLocalVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamListenSocket #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ConnectP2P :: (self: *ISteamNetworkingSockets, identityRemote: SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #no_context {
    return SteamSockets_ISteamNetworkingSockets_ConnectP2P(self, *identityRemote, nRemoteVirtualPort, nOptions, pOptions);
}
SteamSockets_ISteamNetworkingSockets_AcceptConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_CloseConnection :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nReason: s32, pszDebug: *u8, bEnableLinger: bool) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_CloseListenSocket :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_SetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, nUserData: int64) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetConnectionUserData :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection) -> int64 #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_SetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8) -> void #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetConnectionName :: (self: *ISteamNetworkingSockets, hPeer: HSteamNetConnection, pszName: *u8, nMaxLen: s32) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_SendMessageToConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pData: *void, cbData: uint32, nSendFlags: s32, pOutMessageNumber: *int64) -> EResult #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_SendMessages :: (self: *ISteamNetworkingSockets, nMessages: s32, pMessages: **SteamNetworkingMessage_t, pOutMessageNumberOrResult: *int64) -> void #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_FlushMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection) -> EResult #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ReceiveMessagesOnConnection :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetConnectionInfo :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pInfo: *SteamNetConnectionInfo_t) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetConnectionRealTimeStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pStats: *SteamNetConnectionRealTimeStatus_t, nLanes: s32, pLanes: *SteamNetConnectionRealTimeLaneStatus_t) -> EResult #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetDetailedConnectionStatus :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, pszBuf: *u8, cbBuf: s32) -> s32 #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetListenSocketAddress :: (self: *ISteamNetworkingSockets, hSocket: HSteamListenSocket, address: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_CreateSocketPair :: (self: *ISteamNetworkingSockets, pOutConnection1: *HSteamNetConnection, pOutConnection2: *HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: *SteamNetworkingIdentity, pIdentity2: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ConfigureConnectionLanes :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, nNumLanes: s32, pLanePriorities: *s32, pLaneWeights: *uint16) -> EResult #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetIdentity :: (self: *ISteamNetworkingSockets, pIdentity: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_InitAuthentication :: (self: *ISteamNetworkingSockets) -> ESteamNetworkingAvailability #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetAuthenticationStatus :: (self: *ISteamNetworkingSockets, pDetails: *SteamNetAuthenticationStatus_t) -> ESteamNetworkingAvailability #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_CreatePollGroup :: (self: *ISteamNetworkingSockets) -> HSteamNetPollGroup #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_DestroyPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_SetConnectionPollGroup :: (self: *ISteamNetworkingSockets, hConn: HSteamNetConnection, hPollGroup: HSteamNetPollGroup) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup :: (self: *ISteamNetworkingSockets, hPollGroup: HSteamNetPollGroup, ppOutMessages: **SteamNetworkingMessage_t, nMaxMessages: s32) -> s32 #foreign libgamenetworkingsockets;

SteamSockets_ISteamNetworkingSockets_ConnectP2PCustomSignaling :: (self: *ISteamNetworkingSockets, pSignaling: *ISteamNetworkingConnectionSignaling, pPeerIdentity: *SteamNetworkingIdentity, nRemoteVirtualPort: s32, nOptions: s32, pOptions: *SteamNetworkingConfigValue_t) -> HSteamNetConnection #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_ReceivedP2PCustomSignal :: (self: *ISteamNetworkingSockets, pMsg: *void, cbMsg: s32, pContext: *ISteamNetworkingSignalingRecvContext) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_GetCertificateRequest :: (self: *ISteamNetworkingSockets, pcbBlob: *s32, pBlob: *void, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_SetCertificate :: (self: *ISteamNetworkingSockets, pCertificate: *void, cbCertificate: s32, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingSockets_RunCallbacks :: (self: *ISteamNetworkingSockets) -> void #foreign libgamenetworkingsockets;

// ISteamNetworkingUtils
SteamSockets_SteamNetworkingUtils_v003 :: () -> *ISteamNetworkingUtils #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_AllocateMessage :: (self: *ISteamNetworkingUtils, cbAllocateBuffer: s32) -> *SteamNetworkingMessage_t #foreign libgamenetworkingsockets;

SteamSockets_ISteamNetworkingUtils_GetLocalTimestamp :: (self: *ISteamNetworkingUtils) -> SteamNetworkingMicroseconds #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetDebugOutputFunction :: (self: *ISteamNetworkingUtils, eDetailLevel: ESteamNetworkingSocketsDebugOutputType, pfnFunc: FSteamNetworkingSocketsDebugOutput) -> void #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalConfigValueInt32 :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalConfigValueFloat :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalConfigValueString :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalConfigValuePtr :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, val: *void) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetConnectionConfigValueInt32 :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: int32) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetConnectionConfigValueFloat :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: float) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetConnectionConfigValueString :: (self: *ISteamNetworkingUtils, hConn: HSteamNetConnection, eValue: ESteamNetworkingConfigValue, val: *u8) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetConnectionStatusChanged) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamNetAuthenticationStatusChanged) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged :: (self: *ISteamNetworkingUtils, fnCallback: FnSteamRelayNetworkStatusChanged) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, eDataType: ESteamNetworkingConfigDataType, pArg: *void) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: *SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_SetConfigValueStruct :: (self: *ISteamNetworkingUtils, opt: SteamNetworkingConfigValue_t, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64) -> bool #no_context {
    return SteamSockets_ISteamNetworkingUtils_SetConfigValueStruct(self, *opt, eScopeType, scopeObj);
}
SteamSockets_ISteamNetworkingUtils_GetConfigValue :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, eScopeType: ESteamNetworkingConfigScope, scopeObj: s64, pOutDataType: *ESteamNetworkingConfigDataType, pResult: *void, cbResult: *u64) -> ESteamNetworkingGetConfigValueResult #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_GetConfigValueInfo :: (self: *ISteamNetworkingUtils, eValue: ESteamNetworkingConfigValue, pOutDataType: *ESteamNetworkingConfigDataType, pOutScope: *ESteamNetworkingConfigScope) -> *u8 #foreign libgamenetworkingsockets;
SteamSockets_ISteamNetworkingUtils_IterateGenericEditableConfigValues :: (self: *ISteamNetworkingUtils, eCurrent: ESteamNetworkingConfigValue, bEnumerateDevVars: bool) -> ESteamNetworkingConfigValue #foreign libgamenetworkingsockets;

// SteamNetworkingIPAddr
SteamSockets_SteamNetworkingIPAddr_Clear :: (self: *SteamNetworkingIPAddr) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_IsIPv6AllZeros :: (self: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_SetIPv6 :: (self: *SteamNetworkingIPAddr, ipv6: *uint8, nPort: uint16) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_SetIPv4 :: (self: *SteamNetworkingIPAddr, nIP: uint32, nPort: uint16) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_IsIPv4 :: (self: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_GetIPv4 :: (self: *SteamNetworkingIPAddr) -> uint32 #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_SetIPv6LocalHost :: (self: *SteamNetworkingIPAddr, nPort: uint16) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_IsLocalHost :: (self: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: *SteamNetworkingIPAddr) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_IsEqualTo :: (self: *SteamNetworkingIPAddr, x: SteamNetworkingIPAddr) -> bool #no_context {
    return SteamSockets_SteamNetworkingIPAddr_IsEqualTo(self, *x);
}
SteamSockets_SteamNetworkingIPAddr_ToString :: (self: *SteamNetworkingIPAddr, buf: *u8, cbBuf: u64, bWithPort: bool) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIPAddr_ParseString :: (self: *SteamNetworkingIPAddr, pszStr: *u8) -> bool #foreign libgamenetworkingsockets;

// SteamNetworkingIdentity
SteamSockets_SteamNetworkingIdentity_Clear :: (self: *SteamNetworkingIdentity) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_IsInvalid :: (self: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetSteamID :: (self: *SteamNetworkingIdentity, steamID: uint64_steamid) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_GetSteamID :: (self: *SteamNetworkingIdentity) -> uint64_steamid #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetSteamID64 :: (self: *SteamNetworkingIdentity, steamID: uint64) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_GetSteamID64 :: (self: *SteamNetworkingIdentity) -> uint64 #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetXboxPairwiseID :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_GetXboxPairwiseID :: (self: *SteamNetworkingIdentity) -> *u8 #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: *SteamNetworkingIPAddr) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetIPAddr :: (self: *SteamNetworkingIdentity, addr: SteamNetworkingIPAddr) #no_context {
    SteamSockets_SteamNetworkingIdentity_SetIPAddr(self, *addr);
}
SteamSockets_SteamNetworkingIdentity_GetIPAddr :: (self: *SteamNetworkingIdentity) -> *SteamNetworkingIPAddr #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetLocalHost :: (self: *SteamNetworkingIdentity) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_IsLocalHost :: (self: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetGenericString :: (self: *SteamNetworkingIdentity, pszString: *u8) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_GetGenericString :: (self: *SteamNetworkingIdentity) -> *u8 #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_SetGenericBytes :: (self: *SteamNetworkingIdentity, data: *void, cbLen: uint32) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_GetGenericBytes :: (self: *SteamNetworkingIdentity, cbLen: *s32) -> *uint8 #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: *SteamNetworkingIdentity) -> bool #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_IsEqualTo :: (self: *SteamNetworkingIdentity, x: SteamNetworkingIdentity) -> bool #no_context {
    return SteamSockets_SteamNetworkingIdentity_IsEqualTo(self, *x);
}
SteamSockets_SteamNetworkingIdentity_ToString :: (self: *SteamNetworkingIdentity, buf: *u8, cbBuf: u64) -> void #foreign libgamenetworkingsockets;
SteamSockets_SteamNetworkingIdentity_ParseString :: (self: *SteamNetworkingIdentity, sizeofIdentity: u64, pszStr: *u8) -> bool #foreign libgamenetworkingsockets;

// SteamNetworkingMessage_t
SteamSockets_SteamNetworkingMessage_t_Release :: (self: *SteamNetworkingMessage_t) -> void #foreign libgamenetworkingsockets;

//
// Special flat functions to make it easier to work with custom signaling
//
FSteamNetworkingSocketsCustomSignaling_SendSignal :: #type (ctx: *void, hConn: HSteamNetConnection, info: *SteamNetConnectionInfo_t, pMsg: *void, cbMsg: s32) -> bool #c_call;
FSteamNetworkingSocketsCustomSignaling_Release :: #type (ctx: *void) -> void #c_call;

/// Create an ISteamNetworkingConnectionSignaling object from plain C primitives.
SteamSockets_ISteamNetworkingSockets_CreateCustomSignaling :: (ctx: *void, fnSendSignal: FSteamNetworkingSocketsCustomSignaling_SendSignal, fnRelease: FSteamNetworkingSocketsCustomSignaling_Release) -> *ISteamNetworkingConnectionSignaling #foreign libgamenetworkingsockets;

FSteamNetworkingCustomSignalingRecvContext_OnConnectRequest :: #type (ctx: *void, hConn: HSteamNetConnection, identityPeer: *SteamNetworkingIdentity, nLocalVirtualPort: s32) -> *ISteamNetworkingConnectionSignaling #c_call;
FSteamNetworkingCustomSignalingRecvContext_SendRejectionSignal :: #type (ctx: *void, identityPeer: *SteamNetworkingIdentity, pMsg: *void, cbMsg: s32) -> void #c_call;

/// Same as SteamSockets_ISteamNetworkingSockets_ReceivedP2PCustomSignal, but using plain C primitives.
SteamSockets_ISteamNetworkingSockets_ReceivedP2PCustomSignal2 :: (self: *ISteamNetworkingSockets, pMsg: *void, cbMsg: s32, ctx: *void, fnOnConnectRequest: FSteamNetworkingCustomSignalingRecvContext_OnConnectRequest, fnSendRejectionSignal: FSteamNetworkingCustomSignalingRecvContext_SendRejectionSignal) -> bool #foreign libgamenetworkingsockets;

// Initialize the library.  Optionally, you can set an initial identity for the default
// interface that is returned by SteamNetworkingSockets().
//
// On failure, false is returned, and a non-localized diagnostic message is returned.
GameNetworkingSockets_Init :: (pIdentity: *SteamNetworkingIdentity, errMsg: *SteamNetworkingErrMsg) -> bool #foreign libgamenetworkingsockets;

// Close all connections and listen sockets and free all resources
GameNetworkingSockets_Kill :: () -> void #foreign libgamenetworkingsockets;

//
// Statistics about the global lock.
//
SteamNetworkingSockets_SetLockWaitWarningThreshold :: (usecThreshold: SteamNetworkingMicroseconds) -> void #foreign libgamenetworkingsockets;
SteamNetworkingSockets_SetLockAcquiredCallback :: (callback: #type (tags: *u8, usecWaited: SteamNetworkingMicroseconds) -> void #c_call) -> void #foreign libgamenetworkingsockets;
SteamNetworkingSockets_SetLockHeldCallback :: (callback: #type (tags: *u8, usecWaited: SteamNetworkingMicroseconds) -> void #c_call) -> void #foreign libgamenetworkingsockets;

/// Called from the service thread at initialization time.
/// Use this to customize its priority / affinity, etc
SteamNetworkingSockets_SetServiceThreadInitCallback :: (callback: #type () -> void #c_call) -> void #foreign libgamenetworkingsockets;

#scope_file

#import "Basic"; // For assert

libgamenetworkingsockets :: #library "bin/linux/libGameNetworkingSockets";

// #run {
//     {
//         info := type_info(CSteamID.SteamID_t.SteamIDComponent_t);
//         for info.members {
//             if it.name == {
//                 case "__bitfield";
//                     assert(it.offset_in_bytes == 0, "CSteamID.SteamID_t.SteamIDComponent_t.__bitfield has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "CSteamID.SteamID_t.SteamIDComponent_t.__bitfield has unexpected size % instead of 8", it.type.runtime_size);
//             }
//         }
//         assert(size_of(CSteamID.SteamID_t.SteamIDComponent_t) == 8, "CSteamID.SteamID_t.SteamIDComponent_t has size % instead of 8", size_of(CSteamID.SteamID_t.SteamIDComponent_t));
//     }

//     {
//         info := type_info(CSteamID.SteamID_t);
//         for info.members {
//             if it.name == {
//                 case "m_comp";
//                     assert(it.offset_in_bytes == 0, "CSteamID.SteamID_t.m_comp has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "CSteamID.SteamID_t.m_comp has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_unAll64Bits";
//                     assert(it.offset_in_bytes == 0, "CSteamID.SteamID_t.m_unAll64Bits has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "CSteamID.SteamID_t.m_unAll64Bits has unexpected size % instead of 8", it.type.runtime_size);
//             }
//         }
//         assert(size_of(CSteamID.SteamID_t) == 8, "CSteamID.SteamID_t has size % instead of 8", size_of(CSteamID.SteamID_t));
//     }

//     {
//         info := type_info(CSteamID);
//         for info.members {
//             if it.name == {
//                 case "m_steamid";
//                     assert(it.offset_in_bytes == 0, "CSteamID.m_steamid has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "CSteamID.m_steamid has unexpected size % instead of 8", it.type.runtime_size);
//             }
//         }
//         assert(size_of(CSteamID) == 8, "CSteamID has size % instead of 8", size_of(CSteamID));
//     }

//     {
//         info := type_info(SteamNetworkingIPAddr.IPv4MappedAddress);
//         for info.members {
//             if it.name == {
//                 case "m_8zeros";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkingIPAddr.IPv4MappedAddress.m_8zeros has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingIPAddr.IPv4MappedAddress.m_8zeros has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_0000";
//                     assert(it.offset_in_bytes == 8, "SteamNetworkingIPAddr.IPv4MappedAddress.m_0000 has unexpected offset % instead of 8", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 2, "SteamNetworkingIPAddr.IPv4MappedAddress.m_0000 has unexpected size % instead of 2", it.type.runtime_size);
//                 case "m_ffff";
//                     assert(it.offset_in_bytes == 10, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ffff has unexpected offset % instead of 10", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 2, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ffff has unexpected size % instead of 2", it.type.runtime_size);
//                 case "m_ip";
//                     assert(it.offset_in_bytes == 12, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ip has unexpected offset % instead of 12", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingIPAddr.IPv4MappedAddress.m_ip has unexpected size % instead of 4", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingIPAddr.IPv4MappedAddress) == 16, "SteamNetworkingIPAddr.IPv4MappedAddress has size % instead of 16", size_of(SteamNetworkingIPAddr.IPv4MappedAddress));
//     }

//     {
//         info := type_info(SteamNetworkingIPAddr);
//         for info.members {
//             if it.name == {
//                 case "m_port";
//                     assert(it.offset_in_bytes == 16, "SteamNetworkingIPAddr.m_port has unexpected offset % instead of 16", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 2, "SteamNetworkingIPAddr.m_port has unexpected size % instead of 2", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingIPAddr) == 18, "SteamNetworkingIPAddr has size % instead of 18", size_of(SteamNetworkingIPAddr));
//     }

//     {
//         info := type_info(SteamNetworkingIdentity);
//         for info.members {
//             if it.name == {
//                 case "m_eType";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkingIdentity.m_eType has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingIdentity.m_eType has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_cbSize";
//                     assert(it.offset_in_bytes == 4, "SteamNetworkingIdentity.m_cbSize has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingIdentity.m_cbSize has unexpected size % instead of 4", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingIdentity) == 136, "SteamNetworkingIdentity has size % instead of 136", size_of(SteamNetworkingIdentity));
//     }

//     {
//         info := type_info(SteamNetConnectionInfo_t);
//         for info.members {
//             if it.name == {
//                 case "m_identityRemote";
//                     assert(it.offset_in_bytes == 0, "SteamNetConnectionInfo_t.m_identityRemote has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 136, "SteamNetConnectionInfo_t.m_identityRemote has unexpected size % instead of 136", it.type.runtime_size);
//                 case "m_nUserData";
//                     assert(it.offset_in_bytes == 136, "SteamNetConnectionInfo_t.m_nUserData has unexpected offset % instead of 136", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetConnectionInfo_t.m_nUserData has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_hListenSocket";
//                     assert(it.offset_in_bytes == 144, "SteamNetConnectionInfo_t.m_hListenSocket has unexpected offset % instead of 144", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_hListenSocket has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_addrRemote";
//                     assert(it.offset_in_bytes == 148, "SteamNetConnectionInfo_t.m_addrRemote has unexpected offset % instead of 148", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 18, "SteamNetConnectionInfo_t.m_addrRemote has unexpected size % instead of 18", it.type.runtime_size);
//                 case "m__pad1";
//                     assert(it.offset_in_bytes == 166, "SteamNetConnectionInfo_t.m__pad1 has unexpected offset % instead of 166", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 2, "SteamNetConnectionInfo_t.m__pad1 has unexpected size % instead of 2", it.type.runtime_size);
//                 case "m_idPOPRemote";
//                     assert(it.offset_in_bytes == 168, "SteamNetConnectionInfo_t.m_idPOPRemote has unexpected offset % instead of 168", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_idPOPRemote has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_idPOPRelay";
//                     assert(it.offset_in_bytes == 172, "SteamNetConnectionInfo_t.m_idPOPRelay has unexpected offset % instead of 172", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_idPOPRelay has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_eState";
//                     assert(it.offset_in_bytes == 176, "SteamNetConnectionInfo_t.m_eState has unexpected offset % instead of 176", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_eState has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_eEndReason";
//                     assert(it.offset_in_bytes == 180, "SteamNetConnectionInfo_t.m_eEndReason has unexpected offset % instead of 180", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_eEndReason has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_szEndDebug";
//                     assert(it.offset_in_bytes == 184, "SteamNetConnectionInfo_t.m_szEndDebug has unexpected offset % instead of 184", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 128, "SteamNetConnectionInfo_t.m_szEndDebug has unexpected size % instead of 128", it.type.runtime_size);
//                 case "m_szConnectionDescription";
//                     assert(it.offset_in_bytes == 312, "SteamNetConnectionInfo_t.m_szConnectionDescription has unexpected offset % instead of 312", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 128, "SteamNetConnectionInfo_t.m_szConnectionDescription has unexpected size % instead of 128", it.type.runtime_size);
//                 case "m_nFlags";
//                     assert(it.offset_in_bytes == 440, "SteamNetConnectionInfo_t.m_nFlags has unexpected offset % instead of 440", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionInfo_t.m_nFlags has unexpected size % instead of 4", it.type.runtime_size);
//                 case "reserved";
//                     assert(it.offset_in_bytes == 444, "SteamNetConnectionInfo_t.reserved has unexpected offset % instead of 444", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 252, "SteamNetConnectionInfo_t.reserved has unexpected size % instead of 252", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetConnectionInfo_t) == 696, "SteamNetConnectionInfo_t has size % instead of 696", size_of(SteamNetConnectionInfo_t));
//     }

//     {
//         info := type_info(SteamNetConnectionRealTimeStatus_t);
//         for info.members {
//             if it.name == {
//                 case "m_eState";
//                     assert(it.offset_in_bytes == 0, "SteamNetConnectionRealTimeStatus_t.m_eState has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_eState has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_nPing";
//                     assert(it.offset_in_bytes == 4, "SteamNetConnectionRealTimeStatus_t.m_nPing has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_nPing has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_flConnectionQualityLocal";
//                     assert(it.offset_in_bytes == 8, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityLocal has unexpected offset % instead of 8", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityLocal has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_flConnectionQualityRemote";
//                     assert(it.offset_in_bytes == 12, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityRemote has unexpected offset % instead of 12", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flConnectionQualityRemote has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_flOutPacketsPerSec";
//                     assert(it.offset_in_bytes == 16, "SteamNetConnectionRealTimeStatus_t.m_flOutPacketsPerSec has unexpected offset % instead of 16", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flOutPacketsPerSec has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_flOutBytesPerSec";
//                     assert(it.offset_in_bytes == 20, "SteamNetConnectionRealTimeStatus_t.m_flOutBytesPerSec has unexpected offset % instead of 20", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flOutBytesPerSec has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_flInPacketsPerSec";
//                     assert(it.offset_in_bytes == 24, "SteamNetConnectionRealTimeStatus_t.m_flInPacketsPerSec has unexpected offset % instead of 24", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flInPacketsPerSec has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_flInBytesPerSec";
//                     assert(it.offset_in_bytes == 28, "SteamNetConnectionRealTimeStatus_t.m_flInBytesPerSec has unexpected offset % instead of 28", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_flInBytesPerSec has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_nSendRateBytesPerSecond";
//                     assert(it.offset_in_bytes == 32, "SteamNetConnectionRealTimeStatus_t.m_nSendRateBytesPerSecond has unexpected offset % instead of 32", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_nSendRateBytesPerSecond has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_cbPendingUnreliable";
//                     assert(it.offset_in_bytes == 36, "SteamNetConnectionRealTimeStatus_t.m_cbPendingUnreliable has unexpected offset % instead of 36", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_cbPendingUnreliable has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_cbPendingReliable";
//                     assert(it.offset_in_bytes == 40, "SteamNetConnectionRealTimeStatus_t.m_cbPendingReliable has unexpected offset % instead of 40", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_cbPendingReliable has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_cbSentUnackedReliable";
//                     assert(it.offset_in_bytes == 44, "SteamNetConnectionRealTimeStatus_t.m_cbSentUnackedReliable has unexpected offset % instead of 44", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeStatus_t.m_cbSentUnackedReliable has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_usecQueueTime";
//                     assert(it.offset_in_bytes == 48, "SteamNetConnectionRealTimeStatus_t.m_usecQueueTime has unexpected offset % instead of 48", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetConnectionRealTimeStatus_t.m_usecQueueTime has unexpected size % instead of 8", it.type.runtime_size);
//                 case "reserved";
//                     assert(it.offset_in_bytes == 56, "SteamNetConnectionRealTimeStatus_t.reserved has unexpected offset % instead of 56", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 64, "SteamNetConnectionRealTimeStatus_t.reserved has unexpected size % instead of 64", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetConnectionRealTimeStatus_t) == 120, "SteamNetConnectionRealTimeStatus_t has size % instead of 120", size_of(SteamNetConnectionRealTimeStatus_t));
//     }

//     {
//         info := type_info(SteamNetConnectionRealTimeLaneStatus_t);
//         for info.members {
//             if it.name == {
//                 case "m_cbPendingUnreliable";
//                     assert(it.offset_in_bytes == 0, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingUnreliable has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingUnreliable has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_cbPendingReliable";
//                     assert(it.offset_in_bytes == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingReliable has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbPendingReliable has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_cbSentUnackedReliable";
//                     assert(it.offset_in_bytes == 8, "SteamNetConnectionRealTimeLaneStatus_t.m_cbSentUnackedReliable has unexpected offset % instead of 8", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t.m_cbSentUnackedReliable has unexpected size % instead of 4", it.type.runtime_size);
//                 case "_reservePad1";
//                     assert(it.offset_in_bytes == 12, "SteamNetConnectionRealTimeLaneStatus_t._reservePad1 has unexpected offset % instead of 12", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionRealTimeLaneStatus_t._reservePad1 has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_usecQueueTime";
//                     assert(it.offset_in_bytes == 16, "SteamNetConnectionRealTimeLaneStatus_t.m_usecQueueTime has unexpected offset % instead of 16", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetConnectionRealTimeLaneStatus_t.m_usecQueueTime has unexpected size % instead of 8", it.type.runtime_size);
//                 case "reserved";
//                     assert(it.offset_in_bytes == 24, "SteamNetConnectionRealTimeLaneStatus_t.reserved has unexpected offset % instead of 24", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 40, "SteamNetConnectionRealTimeLaneStatus_t.reserved has unexpected size % instead of 40", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetConnectionRealTimeLaneStatus_t) == 64, "SteamNetConnectionRealTimeLaneStatus_t has size % instead of 64", size_of(SteamNetConnectionRealTimeLaneStatus_t));
//     }

//     {
//         info := type_info(SteamNetworkingMessage_t);
//         for info.members {
//             if it.name == {
//                 case "m_pData";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkingMessage_t.m_pData has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_pData has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_cbSize";
//                     assert(it.offset_in_bytes == 8, "SteamNetworkingMessage_t.m_cbSize has unexpected offset % instead of 8", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_cbSize has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_conn";
//                     assert(it.offset_in_bytes == 12, "SteamNetworkingMessage_t.m_conn has unexpected offset % instead of 12", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_conn has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_identityPeer";
//                     assert(it.offset_in_bytes == 16, "SteamNetworkingMessage_t.m_identityPeer has unexpected offset % instead of 16", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 136, "SteamNetworkingMessage_t.m_identityPeer has unexpected size % instead of 136", it.type.runtime_size);
//                 case "m_nConnUserData";
//                     assert(it.offset_in_bytes == 152, "SteamNetworkingMessage_t.m_nConnUserData has unexpected offset % instead of 152", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_nConnUserData has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_usecTimeReceived";
//                     assert(it.offset_in_bytes == 160, "SteamNetworkingMessage_t.m_usecTimeReceived has unexpected offset % instead of 160", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_usecTimeReceived has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_nMessageNumber";
//                     assert(it.offset_in_bytes == 168, "SteamNetworkingMessage_t.m_nMessageNumber has unexpected offset % instead of 168", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_nMessageNumber has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_pfnFreeData";
//                     assert(it.offset_in_bytes == 176, "SteamNetworkingMessage_t.m_pfnFreeData has unexpected offset % instead of 176", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_pfnFreeData has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_pfnRelease";
//                     assert(it.offset_in_bytes == 184, "SteamNetworkingMessage_t.m_pfnRelease has unexpected offset % instead of 184", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_pfnRelease has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_nChannel";
//                     assert(it.offset_in_bytes == 192, "SteamNetworkingMessage_t.m_nChannel has unexpected offset % instead of 192", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_nChannel has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_nFlags";
//                     assert(it.offset_in_bytes == 196, "SteamNetworkingMessage_t.m_nFlags has unexpected offset % instead of 196", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingMessage_t.m_nFlags has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_nUserData";
//                     assert(it.offset_in_bytes == 200, "SteamNetworkingMessage_t.m_nUserData has unexpected offset % instead of 200", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingMessage_t.m_nUserData has unexpected size % instead of 8", it.type.runtime_size);
//                 case "m_idxLane";
//                     assert(it.offset_in_bytes == 208, "SteamNetworkingMessage_t.m_idxLane has unexpected offset % instead of 208", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 2, "SteamNetworkingMessage_t.m_idxLane has unexpected size % instead of 2", it.type.runtime_size);
//                 case "_pad1__";
//                     assert(it.offset_in_bytes == 210, "SteamNetworkingMessage_t._pad1__ has unexpected offset % instead of 210", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 2, "SteamNetworkingMessage_t._pad1__ has unexpected size % instead of 2", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingMessage_t) == 216, "SteamNetworkingMessage_t has size % instead of 216", size_of(SteamNetworkingMessage_t));
//     }

//     {
//         info := type_info(SteamNetworkPingLocation_t);
//         for info.members {
//             if it.name == {
//                 case "m_data";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkPingLocation_t.m_data has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 512, "SteamNetworkPingLocation_t.m_data has unexpected size % instead of 512", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkPingLocation_t) == 512, "SteamNetworkPingLocation_t has size % instead of 512", size_of(SteamNetworkPingLocation_t));
//     }

//     {
//         info := type_info(SteamNetworkingConfigValue_t);
//         for info.members {
//             if it.name == {
//                 case "m_eValue";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkingConfigValue_t.m_eValue has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingConfigValue_t.m_eValue has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_eDataType";
//                     assert(it.offset_in_bytes == 4, "SteamNetworkingConfigValue_t.m_eDataType has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetworkingConfigValue_t.m_eDataType has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_val";
//                     assert(it.offset_in_bytes == 8, "SteamNetworkingConfigValue_t.m_val has unexpected offset % instead of 8", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 8, "SteamNetworkingConfigValue_t.m_val has unexpected size % instead of 8", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingConfigValue_t) == 16, "SteamNetworkingConfigValue_t has size % instead of 16", size_of(SteamNetworkingConfigValue_t));
//     }

//     assert(size_of(ISteamNetworkingMessages) == 8, "ISteamNetworkingMessages has size % instead of 8", size_of(ISteamNetworkingMessages));

//     {
//         info := type_info(SteamNetworkingMessagesSessionRequest_t);
//         for info.members {
//             if it.name == {
//                 case "m_identityRemote";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkingMessagesSessionRequest_t.m_identityRemote has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 136, "SteamNetworkingMessagesSessionRequest_t.m_identityRemote has unexpected size % instead of 136", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingMessagesSessionRequest_t) == 136, "SteamNetworkingMessagesSessionRequest_t has size % instead of 136", size_of(SteamNetworkingMessagesSessionRequest_t));
//     }

//     {
//         info := type_info(SteamNetworkingMessagesSessionFailed_t);
//         for info.members {
//             if it.name == {
//                 case "m_info";
//                     assert(it.offset_in_bytes == 0, "SteamNetworkingMessagesSessionFailed_t.m_info has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 696, "SteamNetworkingMessagesSessionFailed_t.m_info has unexpected size % instead of 696", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetworkingMessagesSessionFailed_t) == 696, "SteamNetworkingMessagesSessionFailed_t has size % instead of 696", size_of(SteamNetworkingMessagesSessionFailed_t));
//     }

//     assert(size_of(ISteamNetworkingSockets) == 8, "ISteamNetworkingSockets has size % instead of 8", size_of(ISteamNetworkingSockets));

//     {
//         info := type_info(SteamNetConnectionStatusChangedCallback_t);
//         for info.members {
//             if it.name == {
//                 case "m_hConn";
//                     assert(it.offset_in_bytes == 0, "SteamNetConnectionStatusChangedCallback_t.m_hConn has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionStatusChangedCallback_t.m_hConn has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_info";
//                     assert(it.offset_in_bytes == 4, "SteamNetConnectionStatusChangedCallback_t.m_info has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 696, "SteamNetConnectionStatusChangedCallback_t.m_info has unexpected size % instead of 696", it.type.runtime_size);
//                 case "m_eOldState";
//                     assert(it.offset_in_bytes == 700, "SteamNetConnectionStatusChangedCallback_t.m_eOldState has unexpected offset % instead of 700", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetConnectionStatusChangedCallback_t.m_eOldState has unexpected size % instead of 4", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetConnectionStatusChangedCallback_t) == 704, "SteamNetConnectionStatusChangedCallback_t has size % instead of 704", size_of(SteamNetConnectionStatusChangedCallback_t));
//     }

//     {
//         info := type_info(SteamNetAuthenticationStatus_t);
//         for info.members {
//             if it.name == {
//                 case "m_eAvail";
//                     assert(it.offset_in_bytes == 0, "SteamNetAuthenticationStatus_t.m_eAvail has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamNetAuthenticationStatus_t.m_eAvail has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_debugMsg";
//                     assert(it.offset_in_bytes == 4, "SteamNetAuthenticationStatus_t.m_debugMsg has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 256, "SteamNetAuthenticationStatus_t.m_debugMsg has unexpected size % instead of 256", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamNetAuthenticationStatus_t) == 260, "SteamNetAuthenticationStatus_t has size % instead of 260", size_of(SteamNetAuthenticationStatus_t));
//     }

//     assert(size_of(ISteamNetworkingUtils) == 8, "ISteamNetworkingUtils has size % instead of 8", size_of(ISteamNetworkingUtils));

//     {
//         info := type_info(SteamRelayNetworkStatus_t);
//         for info.members {
//             if it.name == {
//                 case "m_eAvail";
//                     assert(it.offset_in_bytes == 0, "SteamRelayNetworkStatus_t.m_eAvail has unexpected offset % instead of 0", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_eAvail has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_bPingMeasurementInProgress";
//                     assert(it.offset_in_bytes == 4, "SteamRelayNetworkStatus_t.m_bPingMeasurementInProgress has unexpected offset % instead of 4", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_bPingMeasurementInProgress has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_eAvailNetworkConfig";
//                     assert(it.offset_in_bytes == 8, "SteamRelayNetworkStatus_t.m_eAvailNetworkConfig has unexpected offset % instead of 8", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_eAvailNetworkConfig has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_eAvailAnyRelay";
//                     assert(it.offset_in_bytes == 12, "SteamRelayNetworkStatus_t.m_eAvailAnyRelay has unexpected offset % instead of 12", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 4, "SteamRelayNetworkStatus_t.m_eAvailAnyRelay has unexpected size % instead of 4", it.type.runtime_size);
//                 case "m_debugMsg";
//                     assert(it.offset_in_bytes == 16, "SteamRelayNetworkStatus_t.m_debugMsg has unexpected offset % instead of 16", it.offset_in_bytes);
//                     assert(it.type.runtime_size == 256, "SteamRelayNetworkStatus_t.m_debugMsg has unexpected size % instead of 256", it.type.runtime_size);
//             }
//         }
//         assert(size_of(SteamRelayNetworkStatus_t) == 272, "SteamRelayNetworkStatus_t has size % instead of 272", size_of(SteamRelayNetworkStatus_t));
//     }

//     assert(size_of(ISteamNetworkingConnectionSignaling) == 8, "ISteamNetworkingConnectionSignaling has size % instead of 8", size_of(ISteamNetworkingConnectionSignaling));

//     assert(size_of(ISteamNetworkingSignalingRecvContext) == 8, "ISteamNetworkingSignalingRecvContext has size % instead of 8", size_of(ISteamNetworkingSignalingRecvContext));
// }

