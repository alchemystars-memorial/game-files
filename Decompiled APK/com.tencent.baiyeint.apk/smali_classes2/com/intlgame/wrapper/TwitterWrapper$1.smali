.class Lcom/intlgame/wrapper/TwitterWrapper$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/wrapper/TwitterWrapper;->loginWithSDK(Landroid/app/Activity;Lcom/intlgame/wrapper/TwitterWrapperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/intlgame/wrapper/TwitterWrapperCallback;


# direct methods
.method constructor <init>(Lcom/intlgame/wrapper/TwitterWrapperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWrapper$1;->val$callback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWrapper$1;->val$callback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1, p1}, Lcom/intlgame/wrapper/TwitterWrapperCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWrapper$1;->val$callback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    new-instance v1, Lcom/intlgame/wrapper/TwitterWrapperSession;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-direct {v1, p1}, Lcom/intlgame/wrapper/TwitterWrapperSession;-><init>(Lcom/twitter/sdk/android/core/TwitterSession;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/wrapper/TwitterWrapperCallback;->onSuccess(Lcom/intlgame/wrapper/TwitterWrapperSession;)V

    return-void
.end method
