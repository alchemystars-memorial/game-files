.class public Lcom/intlgame/api/auth/INTLAuth;
.super Ljava/lang/Object;
.source "INTLAuth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native autoLogin()V
.end method

.method public static native bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native bindUsingPluginCache()V
.end method

.method public static native buildMapWithLoggedInChannel()V
.end method

.method public static native cancelAccountDeletion()V
.end method

.method public static native changeIsReceiveEmail(I)V
.end method

.method public static native clearSeCache()V
.end method

.method public static native createSeWorld(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendCallback$SeCreateWorldCallback;)V
.end method

.method public static native generateTransferCode(Ljava/lang/String;)V
.end method

.method public static native getAuthResult()Lcom/intlgame/api/auth/INTLAuthResult;
.end method

.method public static native getIdTokenResult()Ljava/lang/String;
.end method

.method public static native getPluginAppAuthOverTime()I
.end method

.method public static native getPluginAuthOverTime(Ljava/lang/String;I)I
.end method

.method public static native getPluginWebAuthOverTime(I)I
.end method

.method public static native getSeBackupToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendCallback$SeTokenCallback;)V
.end method

.method public static native getSeCachedNativeSessionId()Ljava/lang/String;
.end method

.method public static native getSeNativeSessionId(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendCallback$SeSessionIdCallback;)V
.end method

.method public static native getSeNativeToken(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendCallback$SeTokenCallback;)V
.end method

.method public static native getSeNativeUserId()J
.end method

.method public static native getSeUUID()Ljava/lang/String;
.end method

.method public static native getSeUUIDorNull()Ljava/lang/String;
.end method

.method public static native getSeUserInfo(Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendCallback$SeUserInfoCallback;)V
.end method

.method public static native isSeUUIDLoggedIn()Z
.end method

.method public static native launchAccountUI(ILjava/lang/String;)V
.end method

.method public static native login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native loginUsingPluginCache()V
.end method

.method public static native loginWithConfirmCode(ILjava/lang/String;)V
.end method

.method public static native loginWithMappedChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native logout(Ljava/lang/String;Z)V
.end method

.method public static native modifyAccount(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native modifyDataProtectionAcceptance(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native modifyLegalDocumentsAcceptedVersion(Ljava/lang/String;)V
.end method

.method public static native modifyProfile(Lcom/intlgame/api/auth/INTLAccountProfile;)V
.end method

.method public static native queryAccountProfile()V
.end method

.method public static native queryAccountRegistrationInfo()V
.end method

.method public static native queryBindInfo()V
.end method

.method public static native queryCanBind(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native queryDataProtectionAcceptance()V
.end method

.method public static native queryIdToken()V
.end method

.method public static native queryIsReceiveEmail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native queryLegalDocumentsAcceptedVersion()V
.end method

.method public static native queryLoginRecord()V
.end method

.method public static native queryNeedUpgradeInfo()V
.end method

.method public static native queryRegisterStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native queryTransferCode()V
.end method

.method public static native queryUserInfo()V
.end method

.method public static native queryUserNameStatus(Ljava/lang/String;)V
.end method

.method public static native queryVerifyCodeStatus(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native register(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/intlgame/api/auth/INTLAccountProfile;Ljava/lang/String;)V
.end method

.method public static native requestVerifyCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native resetGuest()V
.end method

.method public static native resetPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native resetSeUUID()V
.end method

.method public static native resetSeUUIDLogin()V
.end method

.method public static native revokeChannelToken()V
.end method

.method public static native setAccountInfo(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public static native setAuthObserver(Lcom/intlgame/api/auth/INTLAuthObserver;)V
.end method

.method public static native switchUser(Z)V
.end method

.method public static native transferAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native unbind(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native updateSeSession(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native upgradeSaccToLI()V
.end method
