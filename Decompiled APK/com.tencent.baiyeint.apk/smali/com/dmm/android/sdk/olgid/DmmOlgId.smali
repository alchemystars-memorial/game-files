.class public abstract Lcom/dmm/android/sdk/olgid/DmmOlgId;
.super Ljava/lang/Object;
.source "DmmOlgId.java"


# static fields
.field public static final REQUEST_LOGIN_OR_REGISTER_USER_ACTIVITY:I = 0xee42a

.field public static final REQUEST_REGISTER_PROFILE_ACTIVITY:I = 0x5b500

.field public static final RESULT_CODE_LOGIN_REGISTER_NG:I = 0x3a3a3

.field public static final RESULT_CODE_REGISTER_PROFILE_NG:I = 0x8b4a6

.field public static final RESULT_INTENT_KEY_REGISTER_PROFILE_ALREADY_REGISTERED:Ljava/lang/String; = "already_register"

.field public static final RESULT_INTENT_KEY_REGISTER_PROFILE_FATAL_ERROR:Ljava/lang/String; = "fatal_error"

.field public static final RESULT_INTENT_KEY_REGISTER_PROFILE_HTTP_STATUS:Ljava/lang/String; = "http_status"

.field public static final RESULT_INTENT_KEY_REGISTER_PROFILE_NETWORK:Ljava/lang/String; = "network"

.field public static final RESULT_INTENT_KEY_REGISTER_PROFILE_UNKNOWN_ERROR:Ljava/lang/String; = "unknown"

.field public static final RESULT_INTENT_KEY_REGISTER_PROFILE_USER_CHECK:Ljava/lang/String; = "user_check"

.field private static sInstance:Lcom/dmm/android/sdk/olgid/DmmOlgId;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;
    .locals 3

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgId;->sInstance:Lcom/dmm/android/sdk/olgid/DmmOlgId;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdUninitializedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmmOlgId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not initialized."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dmm/android/sdk/olgid/error/DmmOlgIdUninitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized initializeSDK(Landroid/content/Context;I)V
    .locals 3

    const-class v0, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v0

    :try_start_0
    const-string v1, "NATIVE"

    const-string v2, "3.3.3"

    invoke-static {p0, p1, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized initializeSDK(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;->sInstance:Lcom/dmm/android/sdk/olgid/DmmOlgId;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;->sInstance:Lcom/dmm/android/sdk/olgid/DmmOlgId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    const-class v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v1

    const/16 v16, 0x0

    :try_start_0
    const-string v17, "NATIVE"

    const-string v18, "3.3.3"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-static/range {v2 .. v18}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    const-class v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v1

    :try_start_0
    const-string v17, "NATIVE"

    const-string v18, "3.3.3"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-static/range {v2 .. v18}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    const-class v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v1

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    :try_start_0
    invoke-static/range {v2 .. v18}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method

.method static declared-synchronized initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    const-class v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v1

    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    :try_start_0
    invoke-static/range {v2 .. v19}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 20

    const-class v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v1

    :try_start_0
    const-string v18, "NATIVE"

    const-string v19, "3.3.3"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    invoke-static/range {v2 .. v19}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 21

    const-class v1, Lcom/dmm/android/sdk/olgid/DmmOlgId;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgId;->sInstance:Lcom/dmm/android/sdk/olgid/DmmOlgId;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    invoke-direct/range {v2 .. v20}, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgId;->sInstance:Lcom/dmm/android/sdk/olgid/DmmOlgId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract configure(Lcom/dmm/android/sdk/olgid/DmmConfigureCallback;)V
.end method

.method public abstract getAccessTokenExpirationDate()Ljava/util/Date;
.end method

.method public abstract getApplicationID()Ljava/lang/String;
.end method

.method public abstract getAuthAgent()Lcom/dmm/android/sdk/olgid/auth/DmmOlgIdAuthAgent;
.end method

.method public abstract getDmmGamesID()Ljava/lang/String;
.end method

.method public abstract getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;)V
.end method

.method public abstract getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract getPaymentCallback()Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;
.end method

.method public abstract getRedirectUrl()Ljava/lang/String;
.end method

.method public abstract getSecureID()Ljava/lang/String;
.end method

.method public abstract getSettings()Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;
.end method

.method public abstract getUniqueID()Ljava/lang/String;
.end method

.method public abstract isAbleUpdateAccessToken()Z
.end method

.method public abstract isAccessTokenExpired()Z
.end method

.method public abstract isAdult()Z
.end method

.method public abstract isEmulator()Z
.end method

.method public abstract isLoggedIn()Z
.end method

.method public abstract isSandbox()Z
.end method

.method public abstract login(Landroid/app/Activity;)Z
.end method

.method public abstract logout()V
.end method

.method public abstract openPaymentConfirmView(Landroid/content/Context;Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;)Z
.end method

.method public abstract openPaymentConfirmView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract publishInternalSession(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V
.end method

.method public abstract registerProfile(Landroid/app/Activity;)Z
.end method

.method public abstract registerUser(Landroid/app/Activity;)Z
.end method

.method public abstract setPaymentCallback(Lcom/dmm/android/sdk/olgid/DmmPaymentCallback;)V
.end method

.method public abstract updateAccessToken(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V
.end method
