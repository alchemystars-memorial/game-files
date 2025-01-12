.class final Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$7;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->checkUploadOomRecordCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$7;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$7;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_oom_record_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] Failed to lock file for handling native mmkvlite record."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/z;->a()Lcom/uqm/crashsight/proguard/z;

    const/4 v0, 0x0

    throw v0
.end method
