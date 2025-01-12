.class public final Lcom/linecorp/linesdk/internal/JWKSet$Builder;
.super Ljava/lang/Object;
.source "JWKSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/JWKSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/internal/JWKSet$JWK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/internal/JWKSet$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$Builder;->keys:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/internal/JWKSet;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/JWKSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/internal/JWKSet;-><init>(Lcom/linecorp/linesdk/internal/JWKSet$Builder;Lcom/linecorp/linesdk/internal/JWKSet$1;)V

    return-object v0
.end method

.method public keys(Ljava/util/List;)Lcom/linecorp/linesdk/internal/JWKSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/internal/JWKSet$JWK;",
            ">;)",
            "Lcom/linecorp/linesdk/internal/JWKSet$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$Builder;->keys:Ljava/util/List;

    return-object p0
.end method
