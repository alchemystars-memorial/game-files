.class public Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;
.super Ljava/lang/Object;
.source "StringResponseParser.java"

# interfaces
.implements Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->charsetName:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->getResponseData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseData(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->charsetName:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw p1
.end method
