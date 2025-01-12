.class Lnet/aihelp/data/logic/FaqPresenter$3;
.super Ljava/lang/Object;
.source "FaqPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/FaqPresenter;->goQueryFAQList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/FaqPresenter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/FaqPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/FaqPresenter$3;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    iput-object p2, p0, Lnet/aihelp/data/logic/FaqPresenter$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter$3;->val$query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/FaqHelper;->getRawFlatFaqArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/logic/FaqPresenter$3;->this$0:Lnet/aihelp/data/logic/FaqPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/FaqPresenter;->access$300(Lnet/aihelp/data/logic/FaqPresenter;)Lnet/aihelp/core/mvp/IRepository;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/local/FaqRepository;

    iget-object v1, p0, Lnet/aihelp/data/logic/FaqPresenter$3;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/local/FaqRepository;->getMatchedFaqList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lnet/aihelp/data/logic/FaqPresenter;->access$500()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v1

    new-instance v2, Lnet/aihelp/data/logic/FaqPresenter$3$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/data/logic/FaqPresenter$3$1;-><init>(Lnet/aihelp/data/logic/FaqPresenter$3;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
