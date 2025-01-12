.class Lnet/aihelp/data/logic/FaqPresenter$4;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "FaqPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/FaqPresenter;->prepareFAQNotification()V
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
.field final synthetic this$0:Lnet/aihelp/data/logic/FaqPresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/FaqPresenter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$4;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/FaqPresenter$4;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cs_message_count"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "isHaveChat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lnet/aihelp/data/logic/FaqPresenter$4;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-static {v1}, Lnet/aihelp/data/logic/FaqPresenter;->access$600(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/utils/SpUtil;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/utils/SpUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$4;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/FaqPresenter;->access$700(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showEntranceWithNotification(Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$4;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/FaqPresenter;->access$800(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {p1, v3}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showEntranceWithNotification(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAQ fetch new msg failed, because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
