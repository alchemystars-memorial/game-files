.class Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;
.super Ljava/lang/Object;
.source "StringCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/android/security/encryption/StringCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecretKeys"
.end annotation


# instance fields
.field private final encryptionKey:Ljavax/crypto/SecretKey;

.field private final integrityKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;)Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;->encryptionKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;)Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/android/security/encryption/StringCipher$SecretKeys;->integrityKey:Ljavax/crypto/SecretKey;

    return-object p0
.end method
