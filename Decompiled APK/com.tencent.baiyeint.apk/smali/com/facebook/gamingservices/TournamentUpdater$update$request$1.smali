.class final Lcom/facebook/gamingservices/TournamentUpdater$update$request$1;
.super Ljava/lang/Object;
.source "TournamentUpdater.kt"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/TournamentUpdater;->update(Lcom/facebook/gamingservices/Tournament;Ljava/lang/Number;)Lcom/facebook/bolts/TaskCompletionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/facebook/GraphResponse;",
        "onCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $task:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentUpdater$update$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const-string v1, "Graph API Error"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentUpdater$update$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentUpdater$update$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    new-instance v0, Lcom/facebook/gamingservices/GraphAPIException;

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/GraphAPIException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_7

    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo p1, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentUpdater$update$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentUpdater$update$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    new-instance v0, Lcom/facebook/gamingservices/GraphAPIException;

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/GraphAPIException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void
.end method
