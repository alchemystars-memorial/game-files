.class public final Lg/b;
.super Ljava/lang/Object;


# static fields
.field public static c:[B

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x28

    new-array v0, v0, [B

    sput-object v0, Lg/b;->c:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sget-object v1, Lg/b;->c:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/b;->c:[B

    const-string v3, "ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lg/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/b;->c:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lg/b;->e:Ljava/lang/String;

    :goto_0
    const-string v1, "1234567890123456"

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "base"

    iput-object v0, p0, Lg/b;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lg/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lj/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj/b;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lg/b;->b:Ljava/lang/String;

    return-void
.end method
