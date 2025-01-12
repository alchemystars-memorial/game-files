.class public Lcom/centauri/comm/CTILog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/comm/CTILog$a;
    }
.end annotation


# static fields
.field public static iLogCallback:Lcom/centauri/comm/CTILog$a;

.field private static logInfo:La/a;

.field private static logger:Lc/b;

.field private static shouldPrintLog:Z

.field private static shouldWriteLog:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    sput-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/centauri/comm/CTILog;->shouldWriteLog:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLog()V
    .locals 0

    invoke-static {}, Lcom/centauri/comm/CTILog;->flush()V

    return-void
.end method

.method private static composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object v0, v0, La/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object v0, v0, La/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    sget-object p0, Lcom/centauri/comm/CTILog;->iLogCallback:Lcom/centauri/comm/CTILog$a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/centauri/comm/CTILog$a;->a()V

    :cond_1
    return-void
.end method

.method public static varargs dc(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object v0, v0, La/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static flush()V
    .locals 7

    const-string v0, "centauriComm<Log>"

    :try_start_0
    sget-object v1, Lcom/centauri/comm/CTILog;->logger:Lc/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v1, Lc/b;->a:Lc/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "flush log error: %s\n, stackTrace: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v6, 0x3

    aget-object v1, v1, v6

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "Log flushing...!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "flush log error: "

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static getLogInfo()La/a;
    .locals 1

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object v0, v0, La/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(La/a;)V
    .locals 4

    const-string v0, "centauriComm<Log>"

    :try_start_0
    const-string v1, "Log init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "Log init failed: info null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-object p0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    invoke-virtual {p0}, La/a;->a()V

    invoke-static {}, Lb/a;->d()V

    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object p0, p0, La/a;->a:Landroid/content/Context;

    invoke-static {p0}, Le/b;->g(Landroid/content/Context;)V

    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-boolean p0, p0, La/a;->c:Z

    const/4 v1, 0x1

    if-nez p0, :cond_2

    sget-object p0, Lb/a;->b:Ljava/lang/String;

    sget v2, Le/b;->a:I

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "centauriLogDebug.ini"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v1

    :goto_1
    sput-boolean p0, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    sget-object p0, Lb/a;->b:Ljava/lang/String;

    invoke-static {p0}, Le/b;->f(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v1, Lcom/centauri/comm/CTILog;->shouldWriteLog:Z

    invoke-static {}, Lc/b;->b()Lc/b;

    move-result-object p0

    sput-object p0, Lcom/centauri/comm/CTILog;->logger:Lc/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string v1, "Log init failed: "

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static removeILogCallback()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/centauri/comm/CTILog;->iLogCallback:Lcom/centauri/comm/CTILog$a;

    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p2, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    sget-object p2, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object p2, p2, La/a;->b:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs s(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/centauri/comm/CTILog;->s(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setILogCallback(Lcom/centauri/comm/CTILog$a;)V
    .locals 0

    sput-object p0, Lcom/centauri/comm/CTILog;->iLogCallback:Lcom/centauri/comm/CTILog$a;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object v0, v0, La/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/centauri/comm/CTILog;->shouldPrintLog:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    sget-object v0, Lcom/centauri/comm/CTILog;->logInfo:La/a;

    iget-object v0, v0, La/a;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lc/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/centauri/comm/CTILog;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static write(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/centauri/comm/CTILog;->logger:Lc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lc/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Log write error: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "centauriComm<Log>"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static writeLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/centauri/comm/CTILog;->shouldWriteLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/centauri/comm/CTILog;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
