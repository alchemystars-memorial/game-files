.class Lnet/aihelp/ui/helper/SendingBillHelper$3;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "SendingBillHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/SendingBillHelper;->requestBillList(Landroid/content/Context;Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
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
.field final synthetic this$0:Lnet/aihelp/ui/helper/SendingBillHelper;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/helper/SendingBillHelper;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {p1}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$100(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$400(Lnet/aihelp/ui/helper/SendingBillHelper;Z)V

    return-void
.end method

.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/helper/SendingBillHelper$3;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {v0}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$100(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "enableInteraction"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lnet/aihelp/common/Const;->TOGGLE_SHEET_DIALOG_ENABLE_INTERACTION:Z

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {p1}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$000(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/TextView;

    move-result-object p1

    sget-boolean v2, Lnet/aihelp/common/Const;->TOGGLE_SHEET_DIALOG_ENABLE_INTERACTION:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {p1}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$200(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/ImageView;

    move-result-object p1

    sget-boolean v2, Lnet/aihelp/common/Const;->TOGGLE_SHEET_DIALOG_ENABLE_INTERACTION:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Lorg/json/JSONArray;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {v0}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$300(Lnet/aihelp/ui/helper/SendingBillHelper;)Lnet/aihelp/ui/adapter/BillingListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->update(Lorg/json/JSONArray;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$3;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {p1, v3}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$400(Lnet/aihelp/ui/helper/SendingBillHelper;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method
