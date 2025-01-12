.class public final Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
.super Ljava/lang/Object;
.source "OpenIdDiscoveryDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authorizationEndpoint:Ljava/lang/String;

.field private idTokenSigningAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuer:Ljava/lang/String;

.field private jwksUri:Ljava/lang/String;

.field private responseTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subjectTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tokenEndpoint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->authorizationEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->tokenEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->jwksUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->responseTypesSupported:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->subjectTypesSupported:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->idTokenSigningAlgValuesSupported:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public authorizationEndpoint(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->authorizationEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;-><init>(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$1;)V

    return-object v0
.end method

.method public idTokenSigningAlgValuesSupported(Ljava/util/List;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->idTokenSigningAlgValuesSupported:Ljava/util/List;

    return-object p0
.end method

.method public issuer(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method public jwksUri(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->jwksUri:Ljava/lang/String;

    return-object p0
.end method

.method public responseTypesSupported(Ljava/util/List;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->responseTypesSupported:Ljava/util/List;

    return-object p0
.end method

.method public subjectTypesSupported(Ljava/util/List;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->subjectTypesSupported:Ljava/util/List;

    return-object p0
.end method

.method public tokenEndpoint(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->tokenEndpoint:Ljava/lang/String;

    return-object p0
.end method
