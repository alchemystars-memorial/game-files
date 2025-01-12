.class interface abstract Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;
.super Ljava/lang/Object;
.source "LineApiClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "APIWithAccessToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation
.end method
