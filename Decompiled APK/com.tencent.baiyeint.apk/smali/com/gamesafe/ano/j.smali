.class public Lcom/gamesafe/ano/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gamesafe/ano/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/gamesafe/ano/j;->b:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/gamesafe/ano/j;->c:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/gamesafe/ano/j;->e()V

    return-void
.end method

.method private e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/gamesafe/ano/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gamesafe/ano/f;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesafe/ano/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gamesafe/ano/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gamesafe/ano/j;->b:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_2

    return-void

    :cond_2
    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v1, "S.509"

    invoke-static {v1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/gamesafe/ano/j;->c:Ljava/security/cert/X509Certificate;

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/gamesafe/ano/j;->d()V

    iget-object v1, p0, Lcom/gamesafe/ano/j;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    const-string v4, "MNV"

    invoke-static {v4}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_0

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const-string v4, "YNV"

    invoke-static {v4}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/gamesafe/ano/j;->d()V

    iget-object v1, p0, Lcom/gamesafe/ano/j;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/gamesafe/ano/j;->d()V

    iget-object v1, p0, Lcom/gamesafe/ano/j;->c:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method
