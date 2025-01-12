.class public Lcom/linecorp/linesdk/LineAccessToken;
.super Ljava/lang/Object;
.source "LineAccessToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresInMillis:J

.field private final issuedClientTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/LineAccessToken$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineAccessToken$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/LineAccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/LineAccessToken$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    iput-wide p2, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    iput-wide p4, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/LineAccessToken;

    iget-wide v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    iget-wide v3, p1, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-wide v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    iget-wide v3, p1, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getEstimatedExpirationTimeMillis()J
    .locals 4

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineAccessToken;->getExpiresInMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getExpiresInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    return-wide v0
.end method

.method public getIssuedClientTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    return-wide v0
.end method

.method public getTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineAccessToken{accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/linecorp/linesdk/utils/DebugUtils;->hideIfNotDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", issuedClientTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/linecorp/linesdk/LineAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->expiresInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/linecorp/linesdk/LineAccessToken;->issuedClientTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
