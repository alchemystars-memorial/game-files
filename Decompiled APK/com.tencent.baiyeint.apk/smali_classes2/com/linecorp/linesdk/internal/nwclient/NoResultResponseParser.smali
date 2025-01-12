.class final Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;
.super Ljava/lang/Object;
.source "NoResultResponseParser.java"

# interfaces
.implements Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_RESULT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;->NO_RESULT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p1, Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;->NO_RESULT:Ljava/lang/Object;

    return-object p1
.end method
