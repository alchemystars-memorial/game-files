.class public Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;
.super Ljava/io/IOException;
.source ""


# instance fields
.field private final valueOf:Lcom/appsflyer/internal/AFc1nSDK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/AFc1nSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/appsflyer/internal/AFc1nSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Lcom/appsflyer/internal/AFc1nSDK<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    return-void
.end method


# virtual methods
.method public getRawResponse()Lcom/appsflyer/internal/AFc1nSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appsflyer/internal/AFc1nSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    return-object v0
.end method
