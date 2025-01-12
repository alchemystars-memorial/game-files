.class final Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->checkUploadMmkvliteRecordCrash()V
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

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_mmkvlite_record_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "[Native] Failed to lock file for handling native mmkvlite record."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/y;->b()[B

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v0, v4

    if-lez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[Native] Get crash from native mmkvlite."

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Lcom/uqm/crashsight/crashreport/crash/b;

    move-result-object v3

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a([BJZZZ)V

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/u;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
