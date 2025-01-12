.class public final Lcom/uqm/crashsight/b;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:Z = true

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field private static d:Lcom/uqm/crashsight/proguard/e;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/uqm/crashsight/b;->a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 4

    const-class v0, Lcom/uqm/crashsight/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "[init] initial Multi-times, ignore this."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    sget-object p0, Lcom/uqm/crashsight/proguard/p;->a:Ljava/lang/String;

    const-string p1, "[init] context of init() is null, check it."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/b;->a(Lcom/uqm/crashsight/crashreport/common/info/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v2, Lcom/uqm/crashsight/b;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object p0, Lcom/uqm/crashsight/proguard/p;->a:Ljava/lang/String;

    const-string p1, "[init] meta data of CS_APP_ID in AndroidManifest.xml should be set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_4
    iget-boolean v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->u:Z

    invoke-static {p0, v2, v1, p1}, Lcom/uqm/crashsight/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/CrashSightStrategy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-class v3, Lcom/uqm/crashsight/b;

    monitor-enter v3

    :try_start_0
    const-string v4, "appContext: %s, appId: %s, isDebug: %b, crashSightStrategy: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string v6, "is null"

    goto :goto_0

    :cond_0
    const-string v6, "not null"

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    if-nez v2, :cond_1

    const-string v8, "is null"

    goto :goto_1

    :cond_1
    const-string v8, "not null"

    :goto_1
    const/4 v10, 0x3

    aput-object v8, v5, v10

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/o;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/uqm/crashsight/b;->e:Z

    if-eqz v4, :cond_2

    const-string v0, "[init] initial Multi-times, ignore this."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    return-void

    :cond_2
    if-nez p0, :cond_3

    :try_start_1
    sget-object v0, Lcom/uqm/crashsight/proguard/p;->a:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    return-void

    :cond_3
    if-nez v0, :cond_4

    :try_start_2
    sget-object v0, Lcom/uqm/crashsight/proguard/p;->a:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    return-void

    :cond_4
    :try_start_3
    sput-boolean v6, Lcom/uqm/crashsight/b;->e:Z

    if-eqz v1, :cond_5

    sput-boolean v6, Lcom/uqm/crashsight/b;->c:Z

    sput-boolean v6, Lcom/uqm/crashsight/proguard/p;->b:Z

    const-string v4, "CrashSight debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "--------------------------------------------------------------------------------------------"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "CrashSight debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684CrashSight SDK\u7684Log -- More detailed log of CrashSight SDK will be output to logcat;"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by CrashSight will be uploaded immediately."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "--------------------------------------------------------------------------------------------"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[init] Open debug mode of CrashSight."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    const-string v4, " crash report start initializing..."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[init] CrashSight start initializing..."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "[init] CrashSight complete version: v%s"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v8, "4.2.11"

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v5

    invoke-static {v5}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Lcom/uqm/crashsight/crashreport/common/info/a;)V

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getLogPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/a;->x()Ljava/lang/String;

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/r;->a(Landroid/content/Context;)V

    sget-object v8, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-static {v4, v8}, Lcom/uqm/crashsight/proguard/e;->a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/proguard/e;

    move-result-object v8

    sput-object v8, Lcom/uqm/crashsight/b;->d:Lcom/uqm/crashsight/proguard/e;

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/k;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/k;

    sget-object v8, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-static {v4, v8}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v8

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/c;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/c;

    move-result-object v11

    invoke-static {v5}, Lcom/uqm/crashsight/b;->a(Lcom/uqm/crashsight/crashreport/common/info/a;)Z

    move-result v12

    if-eqz v12, :cond_7

    sput-boolean v7, Lcom/uqm/crashsight/b;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    return-void

    :cond_7
    :try_start_4
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Ljava/lang/String;)V

    const-string v12, "[param] Set APP ID:%s"

    new-array v13, v6, [Ljava/lang/Object;

    aput-object v0, v13, v7

    invoke-static {v12, v13}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v13, 0x64

    if-nez v12, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_8

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "appVersion %s length is over limit %d substring to %s"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v0, v15, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v6

    aput-object v12, v15, v9

    invoke-static {v14, v15}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v12

    :cond_8
    iput-object v0, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    const-string v0, "[param] Set App version: %s"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v7

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_a

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "appChannel %s length is over limit %d substring to %s"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v0, v15, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v6

    aput-object v12, v15, v9

    invoke-static {v14, v15}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v12

    :cond_a
    sget-object v14, Lcom/uqm/crashsight/b;->d:Lcom/uqm/crashsight/proguard/e;

    const/16 v15, 0x22c

    const-string v16, "app_channel"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/d;Z)Z

    iput-object v0, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/uqm/crashsight/b;->d:Lcom/uqm/crashsight/proguard/e;

    const/16 v12, 0x22c

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14, v6}, Lcom/uqm/crashsight/proguard/e;->a(ILcom/uqm/crashsight/proguard/d;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v12, "app_channel"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_c

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v12, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_c
    :goto_2
    const-string v0, "[param] Set App channel: %s"

    new-array v12, v6, [Ljava/lang/Object;

    iget-object v14, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    aput-object v14, v12, v7

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    sget-boolean v12, Lcom/uqm/crashsight/b;->c:Z

    if-eqz v12, :cond_d

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_e

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "appPackageName %s length is over limit %d substring to %s"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v0, v15, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v6

    aput-object v12, v15, v9

    invoke-static {v14, v15}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v12

    :cond_e
    iput-object v0, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v0, "[param] Set App package: %s"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v7

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_10

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "deviceId %s length is over limit %d substring to %s"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v0, v15, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v6

    aput-object v12, v15, v9

    invoke-static {v14, v15}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v12

    :cond_10
    invoke-virtual {v5, v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v12, "[param] Set device ID: %s"

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v0, v14, v7

    invoke-static {v12, v14}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v13, :cond_12

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v14, "deviceModel %s length is over limit %d substring to %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v6

    aput-object v12, v10, v9

    invoke-static {v14, v10}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v12

    :cond_12
    iput-object v0, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->h:Ljava/lang/String;

    const-string v9, "[param] Set device model: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v9, v6}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isUploadProcess()Z

    move-result v0

    iput-boolean v0, v5, Lcom/uqm/crashsight/crashreport/common/info/a;->e:Z

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isCrashSightLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/proguard/r;->a:Z

    :cond_14
    move v5, v7

    :goto_4
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ge v5, v0, :cond_16

    :try_start_7
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/a;

    iget v0, v0, Lcom/uqm/crashsight/a;->id:I

    invoke-virtual {v11, v0}, Lcom/uqm/crashsight/proguard/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/a;

    invoke-virtual {v0, v4, v1, v2}, Lcom/uqm/crashsight/a;->init(Landroid/content/Context;ZLcom/uqm/crashsight/CrashSightStrategy;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_16
    invoke-static {v4, v2}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    if-eqz v2, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppReportDelay()J

    move-result-wide v0

    goto :goto_6

    :cond_17
    const-wide/16 v0, 0x0

    :goto_6
    invoke-virtual {v8, v0, v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(J)V

    const-string v0, "[init] CrashSight initialization finished."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized a(Lcom/uqm/crashsight/a;)V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method private static a(Lcom/uqm/crashsight/crashreport/common/info/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->o:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string p0, "crashSight"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
