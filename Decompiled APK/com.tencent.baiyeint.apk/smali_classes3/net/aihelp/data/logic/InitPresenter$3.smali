.class Lnet/aihelp/data/logic/InitPresenter$3;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->goLogDauStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/InitPresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$3;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/InitPresenter$3;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$3;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/InitPresenter;->access$300(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/core/mvp/IRepository;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/local/InitRepository;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/data/local/InitRepository;->saveDAULogTime(J)V

    return-void
.end method
