.class public final Lcom/uqm/crashsight/crashreport/crash/jni/a;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/uqm/crashsight/crashreport/crash/b;

.field private final c:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/strategy/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->e:J

    return-void
.end method

.method private a()Ljava/io/File;
    .locals 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    const-string v4, "crashSight"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, "crashSight_crash_minidump_"

    const-string v7, ".dmp"

    const/16 v8, 0x1a

    array-length v9, v3

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v3, v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_2

    :try_start_1
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_2

    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v15, v0, v13

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    const-string v8, "current time %d minidump time is %d s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v6, v14

    invoke-static {v8, v6}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "current time minus minidump time is %d s"

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v8, v5

    invoke-static {v6, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x1e

    cmp-long v6, v15, v12

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_1
    return-object v11

    :catchall_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Trace file that has invalid format: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x1a

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final getCrashThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->e:J

    return-wide v0
.end method

.method public final handleAnr()V
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a()Lcom/uqm/crashsight/crashreport/crash/anr/b;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->b(Landroid/content/Context;)Z

    return-void
.end method

.method public final handleCustomAnr()V
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a()Lcom/uqm/crashsight/crashreport/crash/anr/b;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v20, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Native Crash Happen v1"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v19, 0x0

    move/from16 v1, p1

    move-object/from16 v0, v20

    invoke-virtual/range {v0 .. v19}, Lcom/uqm/crashsight/crashreport/crash/jni/a;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 30

    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object/from16 v14, p8

    move/from16 v13, p12

    move/from16 v1, p14

    move-object/from16 v12, p17

    move-object/from16 v2, p19

    const-string v11, ""

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "Native Crash Happen v2"

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    int-to-long v3, v0

    iput-wide v3, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->e:J

    :try_start_0
    invoke-static/range {p9 .. p9}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "UNKNOWN"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, ")"

    const-string v5, "("

    if-lez v13, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p13

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "KERNEL"

    move-object v8, v1

    move-object/from16 v20, v3

    move-object/from16 v19, v6

    goto :goto_1

    :cond_0
    move-object/from16 v6, p7

    move-object/from16 v7, p13

    if-lez v1, :cond_1

    invoke-static/range {p14 .. p14}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_2
    move-object/from16 v20, v3

    :goto_0
    move-object v8, v6

    move-object/from16 v19, v7

    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_5

    move v3, v10

    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_6

    aget-object v6, v2, v3

    if-eqz v6, :cond_4

    const-string v7, "Extra message[%d]: %s"

    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v2, v17

    const/16 v16, 0x1

    aput-object v6, v2, v16

    invoke-static {v7, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "="

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    if-ne v7, v10, :cond_3

    const/4 v7, 0x0

    aget-object v6, v2, v7

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v2, "bad extraMsg %s"

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v10, v7

    invoke-static {v2, v10}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p19

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const-string v2, "not found extraMsg"

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_6
    const-string v2, "HasPendingException"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Native crash happened with a Java pending exception."

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v21, 0x1

    goto :goto_4

    :cond_7
    const/16 v21, 0x0

    :goto_4
    const-string v2, "ExceptionProcessName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    const-string v3, "Name of crash process: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    invoke-static {v3, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v2, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    :goto_6
    move-object/from16 v22, v2

    const-string v2, "ExceptionThreadName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    const-string v3, "Name of crash thread: %s"

    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-static {v3, v6}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v8

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    move-object v10, v8

    move-object v3, v2

    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_d
    move-object v0, v3

    goto :goto_9

    :cond_e
    :goto_8
    move-object v10, v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-wide/16 v2, 0x3e8

    mul-long v4, p3, v2

    div-long v2, p5, v2

    add-long/2addr v4, v2

    const-string v2, "SysLogPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    const-string v2, "JniLogPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Ljava/lang/String;

    iget-object v1, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "no remote but still store!"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_f
    iget-object v1, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    iget-boolean v1, v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v8, "\n"

    if-nez v1, :cond_10

    :try_start_2
    iget-object v1, v15, Lcom/uqm/crashsight/crashreport/crash/jni/a;->d:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "crash report was closed by remote , will not upload to CrashSight , print local for helpful!"

    const/4 v7, 0x0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v22

    move-object/from16 p5, v0

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p2 .. p7}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    invoke-static/range {p11 .. p11}, Lcom/uqm/crashsight/proguard/u;->c(Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v7, 0x0

    invoke-static/range {p10 .. p10}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object v3, v0

    move-object v6, v10

    move/from16 v26, v7

    move-object/from16 v7, p8

    move-object/from16 p1, v0

    move-object v0, v8

    move-object v8, v9

    move-object/from16 v27, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v0

    move-object/from16 v28, v10

    move/from16 v0, v26

    move-object/from16 v10, v19

    move-object/from16 v29, v11

    move-object/from16 v11, v20

    move-object/from16 v12, p11

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, p18

    move/from16 v19, v21

    :try_start_3
    invoke-virtual/range {v1 .. v19}, Lcom/uqm/crashsight/crashreport/crash/jni/a;->packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "pkg crash data fail!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_11
    sget-boolean v2, Lcom/uqm/crashsight/CrashModule;->IS_OPEN_ABORT_MSG:Z

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    move-object/from16 v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v2, p17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    :cond_12
    const-string v2, "NATIVE_CRASH"

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v22

    move-object/from16 p5, p1

    move-object/from16 p6, v4

    move-object/from16 p7, v1

    invoke-static/range {p2 .. p7}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v2, p0

    :try_start_4
    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    move/from16 v4, p12

    invoke-virtual {v3, v1, v4}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v10, 0x1

    goto :goto_a

    :cond_13
    move v10, v0

    :goto_a
    const/4 v3, 0x0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v3

    :cond_14
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(ZLjava/lang/String;)V

    if-eqz v10, :cond_15

    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v1, v5, v6, v4}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    :cond_15
    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v3, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    sget-boolean v1, Lcom/uqm/crashsight/CrashModule;->IS_OPEN_UPLOAD_MMAP:Z

    if-eqz v1, :cond_16

    iget-object v1, v2, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/y;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/y;->c()V

    const-string v1, "deleteMemoryRecords"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v15

    :goto_b
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    return-void
.end method

.method public final packageCrashDatas(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;ZZ)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    move-object/from16 v3, p15

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/c;->a()Lcom/uqm/crashsight/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/c;->l()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    invoke-static {v7, v6}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    new-instance v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v6}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    const/4 v7, 0x1

    iput v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v8, v8, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/a;->z()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    move-object/from16 v8, p5

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    const-string v8, ""

    if-eqz v4, :cond_1

    const-string v4, " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![CrashSight]"

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    move-object/from16 v4, p6

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    if-nez p7, :cond_2

    move-object v4, v8

    goto :goto_1

    :cond_2
    move-object/from16 v4, p7

    :goto_1
    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-nez p8, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v8, p8

    :goto_2
    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    move-wide v8, p3

    iput-wide v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->s:J

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/u;->b([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    move-object v4, p2

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:Ljava/lang/String;

    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->B()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iget-object v4, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->L()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    sget-boolean v4, Lcom/uqm/crashsight/CrashModule;->IS_GENERATE_CRASH_MINIDUMP:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/a;->a()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    aput-object v8, v4, v5

    const-string v8, "Minidump File Path is %s"

    invoke-static {v8, v4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getDumpFilePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v8

    :goto_3
    invoke-static {v4, v2}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/lang/String;

    :cond_6
    invoke-static {v4}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/lang/String;

    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->e:I

    sget-object v4, Lcom/uqm/crashsight/crashreport/crash/c;->h:Ljava/lang/String;

    sget-boolean v9, Lcom/uqm/crashsight/crashreport/crash/c;->m:Z

    move-object/from16 v10, p12

    invoke-static {v10, v2, v4, v9}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->e:I

    move-object/from16 v4, p13

    invoke-static {v4, v2, v8, v7}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    move-object/from16 v2, p10

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    move-object/from16 v2, p9

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:Ljava/lang/String;

    move-object/from16 v2, p14

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->t()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->u()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    if-eqz p17, :cond_a

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->k()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->m()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    iget-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    if-nez v2, :cond_7

    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->e:I

    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/c;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/proguard/r;->a()[B

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:[B

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:J

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Z

    move-result v2

    iput-boolean v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->P:Z

    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->f:I

    invoke-static {v2, v5}, Lcom/uqm/crashsight/proguard/u;->a(IZ)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    iget-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const-string v3, "java:\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    add-int/lit8 v2, v2, 0x6

    iget-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    iget-object v7, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:Ljava/lang/String;

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    :cond_8
    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    :cond_9
    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v1, v6}, Lcom/uqm/crashsight/crashreport/crash/b;->c(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()I

    move-result v1

    iput v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result v1

    iput v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:I

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->C()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    iget-object v1, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->H()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    goto :goto_4

    :cond_a
    const-wide/16 v4, -0x1

    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:J

    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:J

    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:J

    iget-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    :cond_b
    iput-wide v4, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->O:J

    const/4 v2, -0x1

    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:I

    iput v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->T:I

    move-object/from16 v2, p16

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/jni/a;->c:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->H()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->V:Ljava/util/Map;

    iput-object v8, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/util/Map;

    if-nez v1, :cond_c

    const-string v1, "unknown(record)"

    iput-object v1, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->C:Ljava/lang/String;

    :cond_c
    if-eqz v3, :cond_d

    iput-object v3, v6, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:[B

    :cond_d
    :goto_4
    return-object v6
.end method

.method public final testThreadNameFromJni()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "testThreadNameFromJni: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
