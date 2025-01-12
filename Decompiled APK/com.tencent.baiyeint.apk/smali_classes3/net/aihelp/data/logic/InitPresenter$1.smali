.class Lnet/aihelp/data/logic/InitPresenter$1;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->updateUserProfile(Lnet/aihelp/config/UserConfig;)V
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

.field final synthetic val$config:Lnet/aihelp/config/UserConfig;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;Lnet/aihelp/config/UserConfig;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$1;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/InitPresenter$1;->val$config:Lnet/aihelp/config/UserConfig;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/InitPresenter$1;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$1;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/InitPresenter;->access$000(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/core/mvp/IRepository;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/local/InitRepository;

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$1;->val$config:Lnet/aihelp/config/UserConfig;

    invoke-virtual {v0}, Lnet/aihelp/config/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/data/logic/InitPresenter$1;->val$config:Lnet/aihelp/config/UserConfig;

    invoke-virtual {v1}, Lnet/aihelp/config/UserConfig;->getUserTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/data/local/InitRepository;->saveCrmInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
