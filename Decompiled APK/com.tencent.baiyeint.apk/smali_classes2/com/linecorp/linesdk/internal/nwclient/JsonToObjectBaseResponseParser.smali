.class public abstract Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.super Ljava/lang/Object;
.source "JsonToObjectBaseResponseParser.java"

# interfaces
.implements Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final jsonResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;)V

    return-void
.end method

.method constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;->jsonResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;)V

    return-void
.end method


# virtual methods
.method public getResponseData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;->jsonResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->getResponseData(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;->parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
