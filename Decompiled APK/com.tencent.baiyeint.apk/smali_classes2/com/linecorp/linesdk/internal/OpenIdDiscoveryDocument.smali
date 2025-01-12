.class public Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;
.super Ljava/lang/Object;
.source "OpenIdDiscoveryDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;
    }
.end annotation


# instance fields
.field private final authorizationEndpoint:Ljava/lang/String;

.field private final idTokenSigningAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final issuer:Ljava/lang/String;

.field private final jwksUri:Ljava/lang/String;

.field private final responseTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subjectTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenEndpoint:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$000(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->issuer:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$100(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->authorizationEndpoint:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$200(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->tokenEndpoint:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$300(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->jwksUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$400(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->responseTypesSupported:Ljava/util/List;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$500(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->subjectTypesSupported:Ljava/util/List;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->access$600(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->idTokenSigningAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;-><init>(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)V

    return-void
.end method


# virtual methods
.method public getAuthorizationEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->authorizationEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTokenSigningAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->idTokenSigningAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getJwksUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->jwksUri:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->responseTypesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getSubjectTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->subjectTypesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getTokenEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->tokenEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenIdDiscoveryDocument{issuer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authorizationEndpoint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->authorizationEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tokenEndpoint=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->tokenEndpoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jwksUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->jwksUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", responseTypesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->responseTypesSupported:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectTypesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->subjectTypesSupported:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idTokenSigningAlgValuesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->idTokenSigningAlgValuesSupported:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
