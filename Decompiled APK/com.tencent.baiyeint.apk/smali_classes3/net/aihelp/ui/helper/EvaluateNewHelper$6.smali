.class Lnet/aihelp/ui/helper/EvaluateNewHelper$6;
.super Ljava/lang/Object;
.source "EvaluateNewHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/EvaluateNewHelper;->getFeedbackOptionItem(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$opinion:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/helper/EvaluateNewHelper;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iput-object p2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->val$opinion:Lorg/json/JSONObject;

    iput-object p3, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "id"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    invoke-static {p2}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$100(Lnet/aihelp/ui/helper/EvaluateNewHelper;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->val$opinion:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    invoke-static {p2}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$100(Lnet/aihelp/ui/helper/EvaluateNewHelper;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->val$opinion:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->this$0:Lnet/aihelp/ui/helper/EvaluateNewHelper;

    iget-object p2, p0, Lnet/aihelp/ui/helper/EvaluateNewHelper$6;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lnet/aihelp/ui/helper/EvaluateNewHelper;->access$700(Lnet/aihelp/ui/helper/EvaluateNewHelper;Landroid/content/Context;)V

    return-void
.end method
