.class Lnet/aihelp/core/util/logger/AIHelpLogger$1;
.super Ljava/lang/Object;
.source "AIHelpLogger.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/logger/AIHelpLogger;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/logger/AIHelpLogger;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/logger/AIHelpLogger;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger$1;->this$0:Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AIHelpLogger"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
