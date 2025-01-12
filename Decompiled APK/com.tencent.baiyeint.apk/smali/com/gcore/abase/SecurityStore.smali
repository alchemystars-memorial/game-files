.class public Lcom/gcore/abase/SecurityStore;
.super Ljava/lang/Object;
.source "SecurityStore.java"


# static fields
.field private static final ALIAS:Ljava/lang/String; = "GCloudCoreKeyChain"

.field private static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static Instance:Lcom/gcore/abase/SecurityStore; = null

.field private static final RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final SP_NAME:Ljava/lang/String; = "GCloudCoreSP"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyPair:Ljava/security/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gcore/abase/SecurityStore;

    invoke-direct {v0}, Lcom/gcore/abase/SecurityStore;-><init>()V

    sput-object v0, Lcom/gcore/abase/SecurityStore;->Instance:Lcom/gcore/abase/SecurityStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gcore/abase/SecurityStore;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    return-void
.end method

.method private generateKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1000

    const-string v2, "AndroidKeyStore"

    const-string v3, "RSA"

    const/16 v4, 0x17

    if-lt v0, v4, :cond_0

    invoke-static {v3, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p2, "SHA-256"

    const-string v2, "SHA-512"

    filled-new-array {p2, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    const-string v0, "PKCS1Padding"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    new-instance v5, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v5, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CN="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    invoke-static {v3, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getKeyPair()V
    .locals 4

    const-string v0, "GCloudCoreKeyChain"

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gcore/abase/SecurityStore;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/gcore/abase/SecurityStore;->generateKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    :cond_0
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v1, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyChain init failed exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/gcore/abase/SecurityStore;->mContext:Landroid/content/Context;

    const-string v1, "GCloudCoreSP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    const-string v0, "GCloud.GCloudCore"

    const-string v1, "UseKeyStore"

    invoke-virtual {p2, v0, v1, v2}, Lcom/gcore/abase/GCloudCore;->getSolidConfigBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/gcore/abase/SecurityStore;->getKeyPair()V

    :cond_0
    iget-object p2, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    if-eqz p2, :cond_1

    :try_start_0
    const-string p2, "RSA/ECB/PKCS1Padding"

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iget-object v0, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyChain setString exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gcore/abase/SecurityStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    const-string v1, "GCloud.GCloudCore"

    const-string v2, "UseKeyStore"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/gcore/abase/GCloudCore;->getSolidConfigBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gcore/abase/SecurityStore;->getKeyPair()V

    :cond_0
    iget-object v0, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lcom/gcore/abase/SecurityStore;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyChain setString exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gcore/abase/SecurityStore;->mContext:Landroid/content/Context;

    const-string v1, "GCloudCoreSP"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
