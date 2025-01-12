.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;
.super Lcom/dmm/android/sdk/olgid/DmmOlgId;
.source "DmmOlgIdImpl.java"


# static fields
.field private static final EMPTY_ACCESS_TOKEN_CALLBACK:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

.field private static final EMPTY_OLGID_CALLBACK:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

.field private static final PATTERN_PACKAGE_NAME_TO_REDIRECT_URI:Ljava/util/regex/Pattern;

.field private static final PATTERN_PACKAGE_REPLACE:Ljava/util/regex/Pattern;

.field private static REPLACE_PATTERN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

.field private volatile mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

.field private mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

.field private mHandler:Landroid/os/Handler;

.field private mPaymentCallback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;

.field private mRedirectURL:Ljava/lang/String;

.field private mUserCheckRequestHelper:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "([^a-z])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->PATTERN_PACKAGE_NAME_TO_REDIRECT_URI:Ljava/util/regex/Pattern;

    const-string v0, "([0-9_])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->PATTERN_PACKAGE_REPLACE:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "0"

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "1"

    const-string v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "2"

    const-string v2, "c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "3"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "4"

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "5"

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "6"

    const-string v2, "g"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "7"

    const-string v2, "h"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "8"

    const-string v2, "i"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "9"

    const-string v2, "j"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    const-string v1, "_"

    const-string v2, "k"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$14;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$14;-><init>()V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->EMPTY_OLGID_CALLBACK:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$15;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$15;-><init>()V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->EMPTY_ACCESS_TOKEN_CALLBACK:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mRedirectURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->parseConfigurationXml(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->initialize(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    const-string p3, "Failed to parse Configuration XML."

    invoke-direct {p2, p3, p1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p14

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    iput-object v2, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    iput-object v2, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    iput-object v2, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mRedirectURL:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Production;

    invoke-direct {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Production;-><init>()V

    const-string v4, "sandbox"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Sandbox;

    invoke-direct {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Sandbox;-><init>()V

    :cond_0
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getApplicationID()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getConsumerKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p3

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getConsumerSecret()Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    invoke-interface {v2, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationClientId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationClientId()Ljava/lang/String;

    move-result-object v4

    move-object v5, p5

    invoke-interface {v2, v4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationClientSecret()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationClientSecret()Ljava/lang/String;

    move-result-object v4

    move-object v5, p6

    invoke-interface {v2, v4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationSecretKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationSecretKey()Ljava/lang/String;

    move-result-object v4

    move-object v5, p7

    invoke-interface {v2, v4, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationConnectionTimeout()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationConnectionTimeout()Ljava/lang/String;

    move-result-object v4

    move-object v5, p9

    invoke-interface {v2, v4, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationReadTimeout()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationReadTimeout()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p10

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsSnsLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsSnsLink()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p11

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsRegistrationLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting$Key;->getAuthenticationIsRegistrationLink()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p12

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v3, "developmentMode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "environment"

    move-object/from16 v3, p13

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oauthSignaturePublicKey"

    move-object/from16 v3, p15

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p16, :cond_8

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isEmulator"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p8

    iput-object v1, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mRedirectURL:Ljava/lang/String;

    move-object v1, p1

    move-object/from16 v3, p17

    move-object/from16 v4, p18

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->initialize(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-direct/range {v0 .. v18}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getApplicationIdInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isEmulatorInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;)Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    return-object p0
.end method

.method static synthetic access$602(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;)Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mUserCheckRequestHelper:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->requestValidateOlgId(Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    return-object p0
.end method

.method private disablePaymentApi()V
    .locals 15

    :try_start_0
    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_a

    aget-object v6, v0, v4

    if-nez v6, :cond_1

    goto :goto_7

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    if-nez v8, :cond_2

    goto :goto_7

    :cond_2
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    instance-of v11, v10, Ljava/lang/reflect/WildcardType;

    if-nez v11, :cond_3

    goto :goto_5

    :cond_3
    check-cast v10, Ljava/lang/reflect/WildcardType;

    invoke-interface {v10}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    array-length v11, v10

    move v12, v3

    :goto_2
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    const-class v14, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v5, v6

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    :goto_6
    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    :goto_8
    if-nez v5, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->Payment:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    return-void
.end method

.method private static generateRedirectURLFromPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->PATTERN_PACKAGE_REPLACE:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->REPLACE_PATTERN:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    sget-object p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->PATTERN_PACKAGE_NAME_TO_REDIRECT_URI:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://auth"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getApplicationIdInternal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getApplicationID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;
    .locals 3

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    instance-of v1, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    return-object v0

    :cond_0
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instance is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DmmOlgIdImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " implemented!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUniqueIdInternal()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isAccessTokenExpiredInternal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initialize(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v13, p1

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mRedirectURL:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->generateRedirectURLFromPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mRedirectURL:Ljava/lang/String;

    :cond_0
    move-object v3, v0

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;-><init>(Ljava/util/Map;)V

    iput-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->disablePaymentApi()V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->validateOpenAPIRedirectURI(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getOAuthSignaturePublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->setConfigOAuthSignaturePublicKey(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationClientID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationClientSecret()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationSecretKey()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationConnectionTimeout()I

    move-result v7

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationReadTimeout()I

    move-result v8

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationIsSnsLink()Z

    move-result v9

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getAuthenticationIsRegistration()Z

    move-result v10

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result v11

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result v12

    move-object v2, p1

    invoke-static/range {v2 .. v12}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent$Creator;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZ)Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    new-instance v2, Loauth/signpost/basic/DefaultOAuthConsumer;

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getConsumerKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getConsumerSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Loauth/signpost/basic/DefaultOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/signature/DmmSigningStrategy;

    invoke-direct {v0}, Lcom/dmm/android/signature/DmmSigningStrategy;-><init>()V

    invoke-interface {v2, v0}, Loauth/signpost/OAuthConsumer;->setSigningStrategy(Loauth/signpost/signature/SigningStrategy;)V

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isProduction()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    :goto_1
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    if-eqz v5, :cond_4

    :try_start_0
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-array v7, v4, [Ljavax/net/ssl/X509TrustManager;

    new-instance v8, Lcom/dmm/android/net/sandbox/DmmSelfSignedCertificateTrustManager;

    invoke-direct {v8}, Lcom/dmm/android/net/sandbox/DmmSelfSignedCertificateTrustManager;-><init>()V

    aput-object v8, v7, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v7, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :cond_4
    :goto_3
    xor-int/lit8 v0, v5, 0x1

    invoke-static {v2, v6, v0}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->initializeInstance(Loauth/signpost/OAuthConsumer;Ljavax/net/ssl/SSLSocketFactory;Z)V

    iget-object v0, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {p1, v0, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->init(Landroid/content/Context;Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAccessTokenExpiredInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->isAccessTokenExpired()Z

    move-result v0

    return v0
.end method

.method private isAdultInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isAdult()Z

    move-result v0

    return v0
.end method

.method private isEmulatorInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdUninitializedException;

    const-string v1, "SDK is not initialized."

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdUninitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isLoggedInInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method private isSandboxInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isSandbox()Z

    move-result v0

    return v0
.end method

.method private static parseConfigurationXml(Landroid/content/res/XmlResourceParser;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, -0x1

    const-string v3, ""

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_3

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private requestValidateOlgId(Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;",
            "Ljava/lang/String;",
            "Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->isSuccess()Z

    move-result p4

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingValidity:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    if-eqz p4, :cond_0

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;)V

    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;->MakeRequest:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Builder;->build(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    move-result-object v1

    new-instance v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;

    invoke-direct {v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;-><init>()V

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v2, v4, v3}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->addPostData(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->setCallbackUrl(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;

    move-result-object p2

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getOAuthSignaturePublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->setOAuthSignaturePublicKey(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;->addParameter(Lcom/dmm/android/api/opensocial/DmmParameterHelper;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    move-result-object p2

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    invoke-interface {p2, v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;->setCallback(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;->connectAsync()V

    :cond_0
    return p4
.end method

.method private static validateCallback(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;)Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->EMPTY_OLGID_CALLBACK:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    :cond_0
    return-object p0
.end method

.method private static validateCallback(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->EMPTY_ACCESS_TOKEN_CALLBACK:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    :cond_0
    return-object p0
.end method

.method private static validateOpenAPIRedirectURI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class p1, Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p0, v0, p1}, Lcom/dmm/android/util/Util;->isDefinedSpecifiedActivityInManifest(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not defined correctly in AndroidManifest.xml, check <activity> or <intent-filter> tag."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public configure(Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getInstance()Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result v1

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isEmulatorInternal()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;-><init>(ZZ)V

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v2, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    const-string v2, "DmmGameStoreConfig"

    invoke-static {v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;)V

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$2;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->setCallback(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;)Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->connectAsync()V

    return-void

    :cond_0
    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$3;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V

    sget-object p1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-class v1, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;

    const-string v1, "DmmConfigGetRequestCreateHelper"

    invoke-static {p1, v1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;)V

    new-instance p1, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;

    invoke-static {}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getInstance()Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getConfigGetEndpoint()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result v2

    invoke-direct {p1, v1, v2}, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->clearOAuthToken()V

    new-instance v1, Lcom/dmm/android/api/mobile/DmmApiRequest;

    invoke-direct {v1, p1, v0}, Lcom/dmm/android/api/mobile/DmmApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    new-instance p1, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;

    invoke-direct {p1}, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;-><init>()V

    invoke-virtual {v1, p1}, Lcom/dmm/android/api/mobile/DmmApiRequest;->setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/android/api/mobile/DmmApiRequest;

    move-result-object p1

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequest;->getRequest()Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter callback is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessTokenExpirationDate()Ljava/util/Date;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_ACCESS_TOKEN_EXPIRATION_DATE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->getAccessTokenExpirationDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_APPLICATION_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getApplicationIdInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthAgent()Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_AUTH_AGENT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    return-object v0
.end method

.method public getDmmGamesID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_DMM_GAMES_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getOAuthRequesterId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getEndpoint()Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_ENDPOINT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->validateCallback(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;)Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    move-result-object v3

    sget-object v5, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    sget-object p1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->RequireLogin:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-direct {p1, p2, v0, v5}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object p3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->RequireLogin:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$4;

    invoke-direct {p3, p0, v3, v5, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$4;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {p1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->isAccessTokenExpired()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->AccessTokenExpired:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-direct {p1, p2, v0, v5}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object p3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->AccessTokenExpired:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$5;

    invoke-direct {p3, p0, v3, v5, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$5;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/dmm/android/auth/DmmAuthData;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->clearInstance()V

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v2}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->getSecureId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dmm/android/auth/DmmAuthData;->createInstance(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/auth/DmmAuthData;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_4

    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    sget-object p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NotConfigure:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-direct {p1, p2, v0, v5}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object p3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NotConfigure:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;

    invoke-direct {p3, p0, v3, v5, p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    new-instance p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/util/Map;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mUserCheckRequestHelper:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dmm/android/auth/DmmAuthData;->getUniqueId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;->setUniqueID(Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->clearOAuthToken()V

    new-instance p2, Lcom/dmm/android/api/mobile/DmmApiRequest;

    iget-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mUserCheckRequestHelper:Lcom/dmm/android/api/mobile/user/check/DmmUserCheckRequestCreatedHelper;

    invoke-direct {p2, p3, p1}, Lcom/dmm/android/api/mobile/DmmApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    new-instance p1, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;

    invoke-direct {p1}, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;-><init>()V

    invoke-virtual {p2, p1}, Lcom/dmm/android/api/mobile/DmmApiRequest;->setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/android/api/mobile/DmmApiRequest;

    move-result-object p1

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object p2

    invoke-virtual {p1}, Lcom/dmm/android/api/mobile/DmmApiRequest;->getRequest()Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_1
    sget-object p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NotPublishedIntSession:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    iget-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    invoke-virtual {p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->RequireLogin:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    :cond_6
    new-instance p2, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-direct {p2, p1, v0, v5}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;ILcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;)V

    sget-object p3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$6;

    invoke-direct {p3, p0, v3, v5, p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$6;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_PAYMENT_CALLBACK:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mPaymentCallback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_REDIRECT_URL:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_SECURE_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isAccessTokenExpiredInternal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->getSecureId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSetting()Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_SETTINGS:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdSetting:Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    return-object v0
.end method

.method public getSettings()Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_SETTINGS:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getSetting()Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_UNIQUE_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getUniqueIdInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAbleUpdateAccessToken()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_ABLE_UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->isAbleUpdateAccessToken()Z

    move-result v0

    return v0
.end method

.method public isAccessTokenExpired()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isAccessTokenExpiredInternal()Z

    move-result v0

    return v0
.end method

.method public isAdult()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_ADULT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isAdultInternal()Z

    move-result v0

    return v0
.end method

.method public isEmulator()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_EMULATOR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isEmulatorInternal()Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_LOGGED_IN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v0

    return v0
.end method

.method public isSandbox()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_SANDBOX:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result v0

    return v0
.end method

.method public login(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->LOGIN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0, p1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->startLoginActivity(Landroid/app/Activity;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public logout()V
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->LOGOUT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->logout()V

    return-void
.end method

.method public openPaymentConfirmView(Landroid/content/Context;Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->getTransactionUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->openPaymentConfirmView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public openPaymentConfirmView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->OPEN_PAYMENT_CONFIRM_VIEW:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$BundleKey;->Payment:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lcom/dmm/android/sdk/olgid/app/payment/DmmPaymentActivity$BundleKey;->Transaction:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public publishInternalSession(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->validateCallback(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    move-result-object p1

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;->PUBLISH_INT_SESSION:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->PUBLISH_INT_SESSION:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->PUBLISH_INT_SESSION:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->REQUIRE_LOGIN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$9;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isAccessTokenExpiredInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->PUBLISH_INT_SESSION:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;

    invoke-direct {v1, p0, p1, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {p1, v1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->publishIntSession(Lcom/dmm/android/api/DmmApiCallBack;)V

    return-void
.end method

.method public registerProfile(Landroid/app/Activity;)Z
    .locals 2

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->REGISTER_PROFILE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mDmmOlgIdEndpoint:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->isPublishedIntSession()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dmm/android/sdk/olgid/app/profile/register/DmmOlgIdProfileRegisterWebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x5b500

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerUser(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->REGISTER_USER:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {v0, p1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->startRegisterActivity(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isSandboxInternal()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->SET_PAYMENT_CALLBACK:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mPaymentCallback:Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateAccessToken(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->validateCallback(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    move-result-object p1

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;->UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->isLoggedInInternal()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->REQUIRE_LOGIN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$12;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;-><init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V

    iget-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->mAuthAgent:Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;

    invoke-interface {p1, v1}, Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;->updateAccessToken(Lcom/dmm/android/api/DmmApiCallBack;)V

    return-void
.end method
