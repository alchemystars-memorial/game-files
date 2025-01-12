.class public Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;
.super Ljava/lang/Object;
.source "JsonResponseParser.java"

# interfaces
.implements Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final stringResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->stringResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->stringResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->getResponseData(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getResponseData(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/JsonResponseParser;->stringResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-virtual {v1, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->getResponseData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
