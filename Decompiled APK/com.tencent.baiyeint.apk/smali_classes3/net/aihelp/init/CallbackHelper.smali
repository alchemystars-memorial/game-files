.class public Lnet/aihelp/init/CallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs native handleCocos2dxCallback(I[Ljava/lang/Object;)V
.end method

.method public static varargs registerCocos2dxCallback(I[Ljava/lang/Object;)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lnet/aihelp/init/CallbackHelper$7;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$7;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setOnOperationUnreadChangedCallback(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V

    :pswitch_1
    new-instance p1, Lnet/aihelp/init/CallbackHelper$8;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$8;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lnet/aihelp/init/CallbackHelper$6;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$6;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lnet/aihelp/init/CallbackHelper$5;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$5;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lnet/aihelp/init/CallbackHelper$4;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$4;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setOnSpecificFormSubmittedCallback(Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lnet/aihelp/init/CallbackHelper$3;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$3;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->startUnreadMessageCountPolling(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V

    goto :goto_0

    :pswitch_6
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lnet/aihelp/init/CallbackHelper$2;

    invoke-direct {v0, p0}, Lnet/aihelp/init/CallbackHelper$2;-><init>(I)V

    invoke-static {p1, v0}, Lnet/aihelp/init/AIHelpSupport;->setNetworkCheckHostAddress(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V

    goto :goto_0

    :pswitch_7
    new-instance p1, Lnet/aihelp/init/CallbackHelper$1;

    invoke-direct {p1, p0}, Lnet/aihelp/init/CallbackHelper$1;-><init>(I)V

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpInitializedCallback(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
