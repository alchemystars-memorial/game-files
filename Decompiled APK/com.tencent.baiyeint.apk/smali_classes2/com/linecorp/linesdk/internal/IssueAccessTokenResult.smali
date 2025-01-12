.class public Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;
.super Ljava/lang/Object;
.source "IssueAccessTokenResult.java"


# instance fields
.field private final accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

.field private final idToken:Lcom/linecorp/linesdk/LineIdToken;

.field private final scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Lcom/linecorp/linesdk/LineIdToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;",
            "Lcom/linecorp/linesdk/LineIdToken;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->scopes:Ljava/util/List;

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    iget-object v3, p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-virtual {v2, v3}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->scopes:Ljava/util/List;

    iget-object v3, p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->scopes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/linecorp/linesdk/LineIdToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    return-object v0
.end method

.method public getIdToken()Lcom/linecorp/linesdk/LineIdToken;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->scopes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->scopes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IssueAccessTokenResult{accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->accessToken:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/DebugUtils;->hideIfNotDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->scopes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
