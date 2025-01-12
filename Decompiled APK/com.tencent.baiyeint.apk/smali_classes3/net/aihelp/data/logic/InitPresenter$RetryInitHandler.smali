.class public Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;
.super Landroid/os/Handler;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/logic/InitPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryInitHandler"
.end annotation


# instance fields
.field private final initPresenter:Lnet/aihelp/data/logic/InitPresenter;

.field private retryCount:I


# direct methods
.method public constructor <init>(Lnet/aihelp/data/logic/InitPresenter;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->initPresenter:Lnet/aihelp/data/logic/InitPresenter;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->initPresenter:Lnet/aihelp/data/logic/InitPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/aihelp/data/logic/InitPresenter;->access$200(Lnet/aihelp/data/logic/InitPresenter;Z)V

    return-void
.end method

.method public retryInitRequest(I)V
    .locals 2

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p1, v0, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget p1, p0, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->retryCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->retryCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    const/4 p1, 0x0

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/InitPresenter$RetryInitHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
