.class public final Lcom/uqm/crashsight/crashreport/crash/d;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/crash/d;

.field private static f:J


# instance fields
.field private b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private c:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private d:Lcom/uqm/crashsight/crashreport/crash/b;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/c;->q:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d;->e:Landroid/content/Context;

    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object p1

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/d$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/crashreport/crash/d$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/d;)V

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a()Lcom/uqm/crashsight/crashreport/crash/d;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/crash/d;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/d;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/crashreport/crash/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    return-object p0
.end method

.method private a(I)Ljava/io/File;
    .locals 21

    move/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const-string v0, "jni_mannual_error_trace_"

    const-string v4, ".txt"

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    const-string v0, "crashSight_error_minidump_"

    const-string v4, ".dmp"

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/uqm/crashsight/crashreport/crash/d;->e:Landroid/content/Context;

    const-string v9, "crashSight"

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_4

    array-length v9, v8

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    array-length v10, v8

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_3

    :try_start_1
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v13, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    sub-long v16, v5, v14

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    const-string v1, "current time %d trace time is %d s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v2, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v2, v15

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "current time minus trace time is %d s"

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v2, v3

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v1, 0x1e

    cmp-long v1, v16, v1

    if-ltz v1, :cond_2

    const-string v1, "current time minus trace time > 30s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    return-object v12

    :catchall_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trace file that has invalid format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return-object v1

    :cond_6
    move-object/from16 v7, p0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "[traverseAndFindValidTraces] invalid nativeStackType [%d]"

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/d;)V
    .locals 4

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "[ExtraCrashManager] Trying to notify CrashSight agents."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    const-string v0, "com.uqm.crashsight.proguard.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.uqm.crashsight"

    const-string v2, "sdkPackageName"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "[ExtraCrashManager] CrashSight game agent has been notified."

    new-array v1, p0, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "[ExtraCrashManager] no game agent"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/d;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    const-string v7, "[ExtraCrashManager] Successfully handled."

    sget-boolean v8, Lcom/uqm/crashsight/crashreport/crash/c;->n:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/uqm/crashsight/proguard/u;->b([B)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v10, v10, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v10, v10, Lcom/uqm/crashsight/crashreport/crash/b;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v0, v8}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Ljava/lang/String;)V

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "Do not upload this error after it was merged."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object/from16 v8, p1

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-eq v1, v10, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v11, :cond_3

    const/16 v10, 0x3e8

    if-eq v1, v10, :cond_2

    packed-switch v1, :pswitch_data_0

    new-array v0, v13, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "[ExtraCrashManager] Unknown extra crash type: %d"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    const-string v10, "LOG_STATICS"

    goto :goto_1

    :pswitch_1
    const-string v10, "OOM"

    goto :goto_1

    :pswitch_2
    const-string v10, "H5"

    goto :goto_1

    :cond_2
    const-string v10, "EnterSubMap"

    goto :goto_1

    :cond_3
    const-string v10, "Cocos"

    goto :goto_1

    :cond_4
    const-string v10, "Unity"

    :goto_1
    new-array v14, v13, [Ljava/lang/Object;

    aput-object v10, v14, v9

    const-string v15, "[ExtraCrashManager] %s Crash Happen"

    invoke-static {v15, v14}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v14}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "[ExtraCrashManager] There is no remote strategy, but still store it."

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v14}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v14

    iget-boolean v15, v14, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "\n"

    if-nez v15, :cond_6

    :try_start_1
    iget-object v15, v0, Lcom/uqm/crashsight/crashreport/crash/d;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v15}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v1, "[ExtraCrashManager] Crash report was closed by remote , will not upload to CrashSight , print local for helpful!"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 p0, v10

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v5

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_6
    const-string v15, "[ExtraCrashManager] %s report is disabled."

    const/16 v9, 0x8

    if-eq v1, v12, :cond_8

    if-eq v1, v11, :cond_8

    if-eq v1, v9, :cond_7

    goto :goto_2

    :cond_7
    :try_start_2
    iget-boolean v11, v14, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->k:Z

    if-nez v11, :cond_9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    invoke-static {v15, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_8
    :try_start_3
    iget-boolean v11, v14, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    if-nez v11, :cond_9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    invoke-static {v15, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_9
    :goto_2
    if-ne v1, v9, :cond_a

    goto :goto_3

    :cond_a
    move v12, v1

    :goto_3
    :try_start_4
    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    iput v12, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const/16 v9, 0xa

    if-ne v12, v9, :cond_b

    const-string v5, "[statics] uploading log statics info, as little as possible!"

    const/4 v11, 0x0

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v5, v14}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->k()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->m()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    sget v11, Lcom/uqm/crashsight/crashreport/crash/c;->e:I

    sget-object v14, Lcom/uqm/crashsight/crashreport/crash/c;->h:Ljava/lang/String;

    invoke-static {v11, v14}, Lcom/uqm/crashsight/proguard/u;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v11, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v11, ""

    if-eqz v4, :cond_d

    :try_start_5
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    if-lez v15, :cond_c

    const/4 v15, 0x0

    aget-object v11, v14, v15

    :cond_c
    move-object v14, v4

    goto :goto_4

    :cond_d
    move-object v14, v11

    :goto_4
    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iget-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lcom/uqm/crashsight/proguard/u;->b([B)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    sget v11, Lcom/uqm/crashsight/crashreport/crash/c;->f:I

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lcom/uqm/crashsight/proguard/u;->a(IZ)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v11, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:Ljava/lang/String;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->B()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/util/Map;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v14, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide v14, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:J

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Z

    move-result v11

    iput-boolean v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v11

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/crash/c;->r()Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v11, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    :cond_e
    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()I

    move-result v11

    iput v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result v11

    iput v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:I

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->C()Ljava/util/Map;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    iget-object v11, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->H()Ljava/util/Map;

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    invoke-static {}, Lcom/uqm/crashsight/proguard/r;->a()[B

    move-result-object v11

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:[B

    iget-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    if-nez v11, :cond_f

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    :cond_f
    if-eqz v5, :cond_10

    iget-object v11, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    :goto_5
    const-wide/16 v14, 0xbb8

    if-eq v12, v9, :cond_14

    if-eqz v6, :cond_12

    invoke-direct {v0, v6}, Lcom/uqm/crashsight/crashreport/crash/d;->a(I)Ljava/io/File;

    move-result-object v5

    const-string v9, "traceFile is %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v9, v11}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v5, :cond_12

    const/4 v9, 0x3

    if-ne v6, v9, :cond_11

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    goto :goto_6

    :cond_11
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    :cond_12
    :goto_6
    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/uqm/crashsight/crashreport/crash/d;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v6, v6, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p1, v10

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v8

    move-object/from16 p5, v2

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    :cond_13
    const/4 v2, 0x0

    goto :goto_7

    :cond_14
    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_15
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    move/from16 v7, p6

    const/4 v8, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "[report] postCrash2"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "[report] get native stack."

    const-wide/16 v3, 0x1e

    const/4 v5, 0x1

    if-ne v7, v5, :cond_0

    sget-wide v5, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    sub-long v5, v0, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    sput-wide v0, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->dumpNativeStack()V

    :cond_0
    const/4 v5, 0x3

    if-ne v7, v5, :cond_1

    sget-wide v5, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    sub-long v5, v0, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    sput-wide v0, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->generateMinidump()V

    :cond_1
    const/16 v0, 0xa

    move v3, p1

    if-ne v3, v0, :cond_2

    sget-boolean v0, Lcom/uqm/crashsight/CrashModule;->ENABLE_LOG_STATICS:Z

    if-nez v0, :cond_2

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "[statics] log statics is closed by cloud"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Z

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Ljava/lang/String;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Do not upload this error after it was merged."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object v9

    new-instance v10, Lcom/uqm/crashsight/crashreport/crash/d$3;

    move-object v0, v10

    move-object/from16 v1, p5

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/uqm/crashsight/crashreport/crash/d$3;-><init>(Ljava/lang/String;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "[report] postCrash end"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move/from16 v7, p6

    const/4 v8, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "[report] postCrash"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lez v7, :cond_1

    sget-wide v2, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "[report] get native stack with tyepe %d"

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    sput-wide v0, Lcom/uqm/crashsight/crashreport/crash/d;->f:J

    if-ne v7, v2, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->dumpNativeStack()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->generateMinidump()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/c;->n:Z

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/d;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/crash/d;->d:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Ljava/lang/String;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Do not upload this error after it was merged."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object v9

    new-instance v10, Lcom/uqm/crashsight/crashreport/crash/d$2;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/uqm/crashsight/crashreport/crash/d$2;-><init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {v9, v10}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "[report] postCrash end"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
