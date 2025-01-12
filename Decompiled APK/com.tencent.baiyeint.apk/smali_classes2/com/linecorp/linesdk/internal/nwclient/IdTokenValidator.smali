.class public Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;
.super Ljava/lang/Object;
.source "IdTokenValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    }
.end annotation


# static fields
.field private static final ALLOWED_CLOCK_SKEW_MILLISECONDS:J


# instance fields
.field private final expectedChannelId:Ljava/lang/String;

.field private final expectedIssuer:Ljava/lang/String;

.field private final expectedNonce:Ljava/lang/String;

.field private final expectedUserId:Ljava/lang/String;

.field private final idToken:Lcom/linecorp/linesdk/LineIdToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->ALLOWED_CLOCK_SKEW_MILLISECONDS:J

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->access$000(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->access$100(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedIssuer:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->access$200(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedUserId:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->access$300(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedChannelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->access$400(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedNonce:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;-><init>(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)V

    return-void
.end method

.method private static notMatchedError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but received: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAudience()V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->getAudience()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedChannelId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedChannelId:Ljava/lang/String;

    const-string v2, "OpenId audience does not match."

    invoke-static {v2, v1, v0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->notMatchedError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private validateIssuer()V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedIssuer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedIssuer:Ljava/lang/String;

    const-string v2, "OpenId issuer does not match."

    invoke-static {v2, v1, v0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->notMatchedError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private validateNonce()V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->getNonce()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedNonce:Ljava/lang/String;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedNonce:Ljava/lang/String;

    const-string v2, "OpenId nonce does not match."

    invoke-static {v2, v1, v0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->notMatchedError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private validateSubject()V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->getSubject()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedUserId:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->expectedUserId:Ljava/lang/String;

    const-string v2, "OpenId subject does not match."

    invoke-static {v2, v1, v0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->notMatchedError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private validateTimestamp()V
    .locals 7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->getIssuedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v5, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->ALLOWED_CLOCK_SKEW_MILLISECONDS:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->getExpiresAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenId expiresAt is before current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineIdToken;->getExpiresAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenId issuedAt is after current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineIdToken;->getIssuedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public validate()V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->validateIssuer()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->validateSubject()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->validateAudience()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->validateNonce()V

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->validateTimestamp()V

    return-void
.end method
