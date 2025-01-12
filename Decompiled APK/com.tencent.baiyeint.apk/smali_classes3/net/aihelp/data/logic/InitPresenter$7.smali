.class Lnet/aihelp/data/logic/InitPresenter$7;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->fetchUnreadMessageCount()V
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

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$7;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/InitPresenter$7;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isHaveChat"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lnet/aihelp/common/Const;->TOGGLE_FETCH_MESSAGE:Z

    const-string p1, "cs_message_count"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$7;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/InitPresenter;->access$800(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/utils/SpUtil;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/utils/SpUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v2, Lnet/aihelp/common/Const;->sMessageListener:Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;

    if-eqz v2, :cond_0

    sget-object v2, Lnet/aihelp/common/Const;->sMessageListener:Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v2, p1}, Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;->onMessageCountArrived(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unread msg count polling failed, because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
