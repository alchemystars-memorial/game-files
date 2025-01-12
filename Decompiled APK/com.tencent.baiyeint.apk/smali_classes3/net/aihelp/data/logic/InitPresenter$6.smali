.class Lnet/aihelp/data/logic/InitPresenter$6;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->postCrmPushTokenInfo(Ljava/lang/String;I)V
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

.field final synthetic val$latelyCrmPushInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$6;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/InitPresenter$6;->val$latelyCrmPushInfo:Ljava/lang/String;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/InitPresenter$6;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$6;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/InitPresenter;->access$700(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/utils/SpUtil;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$6;->val$latelyCrmPushInfo:Ljava/lang/String;

    const-string v1, "sp_crm_push_info"

    invoke-virtual {p1, v1, v0}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
