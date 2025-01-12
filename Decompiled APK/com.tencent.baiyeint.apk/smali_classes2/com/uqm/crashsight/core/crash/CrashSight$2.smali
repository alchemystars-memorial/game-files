.class final Lcom/uqm/crashsight/core/crash/CrashSight$2;
.super Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/core/crash/CrashSight;->initWithAppId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :try_start_0
    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    const-string v0, "JAVA_U3D"

    goto :goto_0

    :cond_1
    const-string v0, "JAVA_NATIVE"

    goto :goto_0

    :cond_2
    const-string v0, "JAVA_CATCH"

    goto :goto_0

    :cond_3
    const-string v0, "JAVA_CRASH"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Crash happen type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", typeName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorType : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorMessage : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", errorStack: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/crashreport/CrashReport$CrashHandleCallback;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentMessageForException(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "CrashSight extra message report ok, message : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V

    const-string p3, "extmsg"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string p1, "CrashSight extra message is empty"

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onCrashHandleStart extra message report error, message : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    monitor-enter p0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentForException(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p3, p1

    if-lez p3, :cond_0

    const-string p3, "CrashSight extraBinaryMessage data report ok"

    invoke-static {p3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p1, "CrashSight extraBinaryMessage data is empty"

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onCrashHandleStart2GetExtraData exception, message : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onCrashHandleStart2GetLogPath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentLogPathForException(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    const-string p3, "[attach] CrashSight get log path report ok"

    invoke-static {p3}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p1, "[attach]CrashSight get log path is empty"

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[attach]onCrashHandleStart2GetLogPath exception, message : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onCrashHandleStart2NotifyLogUploadResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/api/crash/UQMCrash;->attachmentLogUploadResultForException(II)V

    const-string p1, "[attach] CrashSight upload log result report ok"

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[attach]onCrashHandleStart2NotifyLogUploadResult exception, message : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method
