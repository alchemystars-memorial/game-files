.class public Lnet/aihelp/exception/AIHelpCrashHandler;
.super Ljava/lang/Object;
.source "AIHelpCrashHandler.java"


# static fields
.field private static final AIHELP_PACKAGE_NAME:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "net.aihelp"

    sput-object v0, Lnet/aihelp/exception/AIHelpCrashHandler;->AIHELP_PACKAGE_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lnet/aihelp/exception/AIHelpCrashHandler$1;

    invoke-direct {v1, v0}, Lnet/aihelp/exception/AIHelpCrashHandler$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static isCrashedByAIHelp(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/aihelp/exception/AIHelpCrashHandler;->AIHELP_PACKAGE_NAME:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
