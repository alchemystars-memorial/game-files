.class final Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->uploadAttachForSingleCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-boolean v0, Lcom/uqm/crashsight/CrashModule;->SINGLE_CRASH_UPLOAD_ATTACHMENT_FORCE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/c;->j()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[attach][single] log has been uploaded for crash [%s]"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/uqm/crashsight/CrashModule;->CRASH_UPLOAD_ATTACHMENT_TIMEOUT:I

    int-to-long v2, v2

    const-string v4, "native_single_attach_record_lock"

    invoke-static {v0, v4, v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "[Native][single] Failed to lock file for handling attach record."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Lcom/uqm/crashsight/crashreport/crash/b;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;->e:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/u;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
