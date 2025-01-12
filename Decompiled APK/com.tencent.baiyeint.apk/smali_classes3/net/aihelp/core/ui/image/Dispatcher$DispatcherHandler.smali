.class Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatcherHandler"
.end annotation


# instance fields
.field private final dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lnet/aihelp/core/ui/image/Dispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler$1;-><init>(Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performResumeTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performPauseTag(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/Dispatcher;->performAirplaneModeChange(Z)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performNetworkStateChange(Landroid/net/NetworkInfo;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performBatchComplete()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/core/ui/image/BitmapHunter;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/core/ui/image/Dispatcher;->performError(Lnet/aihelp/core/ui/image/BitmapHunter;Z)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/core/ui/image/BitmapHunter;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performRetry(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/core/ui/image/BitmapHunter;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performComplete(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/core/ui/image/Action;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performCancel(Lnet/aihelp/core/ui/image/Action;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/core/ui/image/Action;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Dispatcher$DispatcherHandler;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Dispatcher;->performSubmit(Lnet/aihelp/core/ui/image/Action;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
