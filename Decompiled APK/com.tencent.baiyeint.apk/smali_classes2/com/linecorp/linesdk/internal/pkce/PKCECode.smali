.class public Lcom/linecorp/linesdk/internal/pkce/PKCECode;
.super Ljava/lang/Object;
.source "PKCECode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/internal/pkce/PKCECode;",
            ">;"
        }
    .end annotation
.end field

.field private static final LENGTH_VERIFIER:I = 0x40


# instance fields
.field private final challenge:Ljava/lang/String;

.field private final verifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->generateChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/internal/pkce/PKCECode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->generateChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    return-void
.end method

.method private static generateChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static generateVerifier()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newCode()Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 2

    invoke-static {}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->generateVerifier()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    iget-object v2, p1, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChallenge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKCECode{verifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", challenge=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->challenge:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->verifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
