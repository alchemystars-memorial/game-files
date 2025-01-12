.class final Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$8;
.super Ljava/lang/Thread;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testThreadNameCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$8;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$8;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testThreadName()V

    return-void
.end method
