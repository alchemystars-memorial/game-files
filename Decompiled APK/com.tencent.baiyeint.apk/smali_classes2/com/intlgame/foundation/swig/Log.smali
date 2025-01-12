.class public Lcom/intlgame/foundation/swig/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/intlgame/foundation/swig/Log;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    return-void
.end method

.method public static GetInstance()Lcom/intlgame/foundation/swig/Log;
    .locals 1

    invoke-static {}, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;->getInstance()Lcom/intlgame/foundation/swig/Log;

    move-result-object v0

    return-object v0
.end method

.method protected static getCPtr(Lcom/intlgame/foundation/swig/Log;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public DeleteFileAsync()V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_DeleteFileAsync(JLcom/intlgame/foundation/swig/Log;)V

    return-void
.end method

.method public DeleteLogFiles(J)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_DeleteLogFiles(JLcom/intlgame/foundation/swig/Log;J)V

    return-void
.end method

.method public FileOutputAsync(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_FileOutputAsync(JLcom/intlgame/foundation/swig/Log;Ljava/lang/String;)V

    return-void
.end method

.method public Init()V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_Init(JLcom/intlgame/foundation/swig/Log;)V

    return-void
.end method

.method public OutputLog(Lcom/intlgame/foundation/swig/LogLevel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    move-object v11, p0

    iget-wide v0, v11, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-virtual {p1}, Lcom/intlgame/foundation/swig/LogLevel;->swigValue()I

    move-result v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_OutputLog(JLcom/intlgame/foundation/swig/Log;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public ReportLogFiles()V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_ReportLogFiles(JLcom/intlgame/foundation/swig/Log;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/intlgame/foundation/swig/Log;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/intlgame/foundation/swig/Log;->swigCMemOwn:Z

    invoke-static {v0, v1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->delete_Log(J)V

    :cond_0
    iput-wide v2, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set_enable_auto_delete_log_file(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_enable_auto_delete_log_file(JLcom/intlgame/foundation/swig/Log;Z)V

    return-void
.end method

.method public set_enable_compress(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_enable_compress(JLcom/intlgame/foundation/swig/Log;Z)V

    return-void
.end method

.method public set_enable_console_output(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_enable_console_output(JLcom/intlgame/foundation/swig/Log;Z)V

    return-void
.end method

.method public set_enable_encrypt(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_enable_encrypt(JLcom/intlgame/foundation/swig/Log;Z)V

    return-void
.end method

.method public set_enable_file_output(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_enable_file_output(JLcom/intlgame/foundation/swig/Log;Z)V

    return-void
.end method

.method public set_file_excess_action(Lcom/intlgame/foundation/swig/FileExcessAction;)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-virtual {p1}, Lcom/intlgame/foundation/swig/FileExcessAction;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_file_excess_action(JLcom/intlgame/foundation/swig/Log;I)V

    return-void
.end method

.method public set_log_file_path_dir(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_log_file_path_dir(JLcom/intlgame/foundation/swig/Log;Ljava/lang/String;)V

    return-void
.end method

.method public set_log_level(Lcom/intlgame/foundation/swig/LogLevel;)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-virtual {p1}, Lcom/intlgame/foundation/swig/LogLevel;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_log_level(JLcom/intlgame/foundation/swig/Log;I)V

    return-void
.end method

.method public set_max_log_file_size(J)V
    .locals 2

    iget-wide v0, p0, Lcom/intlgame/foundation/swig/Log;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_set_max_log_file_size(JLcom/intlgame/foundation/swig/Log;J)V

    return-void
.end method
