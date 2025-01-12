.class Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;
.super Ljava/lang/Object;
.source "HandlerThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->runOnUiThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;->this$0:Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

    iput-object p2, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;->this$0:Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

    invoke-static {v0}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->access$000(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
