.class public final Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
.super Ljava/lang/Object;
.source "JWKSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/JWKSet$JWK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;

.field private curve:Ljava/lang/String;

.field private keyId:Ljava/lang/String;

.field private keyType:Ljava/lang/String;

.field private use:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->keyType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->use:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->curve:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->y:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public algorithm(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/linecorp/linesdk/internal/JWKSet$JWK;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/JWKSet$JWK;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/internal/JWKSet$JWK;-><init>(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;Lcom/linecorp/linesdk/internal/JWKSet$1;)V

    return-object v0
.end method

.method public curve(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->curve:Ljava/lang/String;

    return-object p0
.end method

.method public keyId(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public keyType(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->keyType:Ljava/lang/String;

    return-object p0
.end method

.method public use(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->use:Ljava/lang/String;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->x:Ljava/lang/String;

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->y:Ljava/lang/String;

    return-object p0
.end method
