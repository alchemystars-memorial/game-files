.class final Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;
.super Ljava/lang/Object;
.source "TournamentFetcher.kt"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/TournamentFetcher;->fetchTournaments()Lcom/facebook/bolts/TaskCompletionSource;
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

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    :cond_1
    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    new-instance v0, Lcom/facebook/gamingservices/GraphAPIException;

    const-string v1, "Graph API Error"

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/GraphAPIException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "Failed to get response"

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    new-instance v1, Lcom/facebook/gamingservices/GraphAPIException;

    invoke-direct {v1, p1}, Lcom/facebook/gamingservices/GraphAPIException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void

    :cond_4
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "data.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, [Lcom/facebook/gamingservices/Tournament;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(dataString\u2026<Tournament>::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "No tournament found"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    new-instance v1, Lcom/facebook/gamingservices/GraphAPIException;

    invoke-direct {v1, p1}, Lcom/facebook/gamingservices/GraphAPIException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentFetcher$fetchTournaments$request$1;->$task:Lcom/facebook/bolts/TaskCompletionSource;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
