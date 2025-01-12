.class public Lcom/intlgame/dmm/DmmUtil;
.super Ljava/lang/Object;
.source "DmmUtil.java"


# static fields
.field private static final DMM_APP_ID_CONFIG_KEY:Ljava/lang/String; = "DMM_APP_ID"

.field private static final DMM_AUTHENTICATION_CLIENT_ID_CONFIG_KEY:Ljava/lang/String; = "DMM_AUTHENTICATION_CLIENT_ID"

.field private static final DMM_AUTHENTICATION_CLIENT_SECRET_CONFIG_KEY:Ljava/lang/String; = "DMM_AUTHENTICATION_CLIENT_SECRET"

.field public static final DMM_CHANNEL:Ljava/lang/String; = "Dmm"

.field public static final DMM_CHANNEL_ID:I = 0x1e

.field private static final DMM_CONSUMER_KEY_CONFIG_KEY:Ljava/lang/String; = "DMM_CONSUMER_KEY"

.field private static final DMM_CONSUMER_SECRET_CONFIG_KEY:Ljava/lang/String; = "DMM_CONSUMER_SECRET"

.field private static final DMM_DEVELOP_MODE_CONFIG_KEY:Ljava/lang/String; = "DMM_DEVELOP_MODE"

.field private static final DMM_DEVELOP_MODE_SANDBOX:Ljava/lang/String; = "sandbox"

.field private static final DMM_GET_VALIDATE_CODE_PATH_CONFIG_KEY:Ljava/lang/String; = "DMM_GET_VALIDATE_CODE_PATH"

.field public static final DMM_PLUGIN:Ljava/lang/String; = "INTLDmm"

.field private static final DMM_REDIRECT_URL_CONFIG_KEY:Ljava/lang/String; = "DMM_REDIRECT_URL"

.field private static final DMM_SECRET_KEY:Ljava/lang/String; = "DMM_SECRET_KEY"

.field public static final DMM_VERSION:Ljava/lang/String; = "3.3.3"

.field public static final INTL_GAME_ID_CONFIG_KEY:Ljava/lang/String; = "GAME_ID"

.field public static final INTL_URL_CONFIG_KEY:Ljava/lang/String; = "INTL_URL"

.field private static final mAppId:Ljava/lang/String;

.field private static final mAuthenticationClientId:Ljava/lang/String;

.field private static final mAuthenticationClientSecret:Ljava/lang/String;

.field private static final mConnectionTimeout:Ljava/lang/Integer;

.field private static final mConsumerKey:Ljava/lang/String;

.field private static final mConsumerSecret:Ljava/lang/String;

.field private static final mDevelopMode:Ljava/lang/String;

.field static final mGetValidateCodePath:Ljava/lang/String;

.field private static final mReadTimeout:Ljava/lang/Integer;

.field static final mRedirectUrl:Ljava/lang/String;

.field private static final mSecretKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x7530

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mConnectionTimeout:Ljava/lang/Integer;

    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mReadTimeout:Ljava/lang/Integer;

    const-string v0, "DMM_DEVELOP_MODE"

    const-string v1, "sandbox"

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mDevelopMode:Ljava/lang/String;

    const-string v2, "DMM_APP_ID"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/intlgame/dmm/DmmUtil;->mAppId:Ljava/lang/String;

    const-string v2, "DMM_CONSUMER_KEY"

    invoke-static {v2, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/intlgame/dmm/DmmUtil;->mConsumerKey:Ljava/lang/String;

    const-string v2, "DMM_CONSUMER_SECRET"

    invoke-static {v2, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/intlgame/dmm/DmmUtil;->mConsumerSecret:Ljava/lang/String;

    const-string v2, "DMM_SECRET_KEY"

    invoke-static {v2, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/intlgame/dmm/DmmUtil;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMM_AUTHENTICATION_CLIENT_ID"

    invoke-static {v0, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientId:Ljava/lang/String;

    const-string v0, "DMM_AUTHENTICATION_CLIENT_SECRET"

    invoke-static {v0, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientSecret:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object v3, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientId:Ljava/lang/String;

    sput-object v3, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientSecret:Ljava/lang/String;

    :goto_0
    const-string v0, "DMM_GET_VALIDATE_CODE_PATH"

    invoke-static {v0, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAME_ID"

    invoke-static {v1, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTL_URL"

    invoke-static {v4, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?gameid=%1$s&channelid=%2$s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mGetValidateCodePath:Ljava/lang/String;

    const-string v0, "DMM_REDIRECT_URL"

    invoke-static {v0, v3}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    sput-object v0, Lcom/intlgame/dmm/DmmUtil;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessTokenExpiredMillis()J
    .locals 2

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getAccessTokenExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDmmOlgIdAuthAgent()Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
    .locals 13

    :try_start_0
    const-string v0, "com.dmm.android.sdk.olgid.DmmOlgIdImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mAuthAgent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/intlgame/dmm/DmmUtil;->mRedirectUrl:Ljava/lang/String;

    sget-object v4, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientId:Ljava/lang/String;

    sget-object v5, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientSecret:Ljava/lang/String;

    sget-object v6, Lcom/intlgame/dmm/DmmUtil;->mSecretKey:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/dmm/DmmUtil;->mConnectionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v0, Lcom/intlgame/dmm/DmmUtil;->mReadTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isSanbox()Z

    move-result v11

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent$Creator;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 15

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMM plugin initialize params\nappID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/intlgame/dmm/DmmUtil;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", consumer key: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/intlgame/dmm/DmmUtil;->mConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", consumer secret: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/intlgame/dmm/DmmUtil;->mConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", authentication client id: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", authentication client secret: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/intlgame/dmm/DmmUtil;->mAuthenticationClientSecret:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", developmode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/intlgame/dmm/DmmUtil;->mDevelopMode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", redirect url: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/intlgame/dmm/DmmUtil;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mGetValidateCodePath:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/intlgame/dmm/DmmUtil;->mGetValidateCodePath:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isSanbox()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object v14, v7

    :goto_0
    sget-object v7, Lcom/intlgame/dmm/DmmUtil;->mSecretKey:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/dmm/DmmUtil;->mConnectionTimeout:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/intlgame/dmm/DmmUtil;->mReadTimeout:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v11, "true"

    const-string v12, "true"

    invoke-static/range {v1 .. v14}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INTLDmm"

    const-string v1, "1.23.00.826"

    const-string v2, "Dmm"

    const-string v3, "3.3.3"

    invoke-static {v0, v1, v2, v3, p0}, Lcom/intlgame/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchDmmConfigTask()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must execute INTLSDK.initialize() first !!!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static isAccessTokenExpired()Z
    .locals 1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isAccessTokenExpired()Z

    move-result v0

    return v0
.end method

.method public static isLoggedIn()Z
    .locals 1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static isSanbox()Z
    .locals 2

    sget-object v0, Lcom/intlgame/dmm/DmmUtil;->mDevelopMode:Ljava/lang/String;

    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static login(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isSanbox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->login(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intlgame/auth/dmm/activity/INTLInternalAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static logout()V
    .locals 1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->logout()V

    return-void
.end method
