.class public Lcom/linecorp/linesdk/internal/InternalAccessToken;
.super Ljava/lang/Object;
.source "InternalAccessToken.java"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresInMillis:J

.field private final issuedClientTimeMillis:J

.field private final refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->accessToken:Ljava/lang/String;

    iput-wide p2, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->expiresInMillis:J

    iput-wide p4, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->issuedClientTimeMillis:J

    iput-object p6, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->refreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->expiresInMillis:J

    iget-wide v3, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->expiresInMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->issuedClientTimeMillis:J

    iget-wide v3, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->issuedClientTimeMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->refreshToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->expiresInMillis:J

    return-wide v0
.end method

.method public getIssuedClientTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->issuedClientTimeMillis:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->expiresInMillis:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->issuedClientTimeMillis:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalAccessToken{accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/DebugUtils;->hideIfNotDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expiresInMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->expiresInMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", issuedClientTimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->issuedClientTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", refreshToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/InternalAccessToken;->refreshToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/linecorp/linesdk/utils/DebugUtils;->hideIfNotDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
