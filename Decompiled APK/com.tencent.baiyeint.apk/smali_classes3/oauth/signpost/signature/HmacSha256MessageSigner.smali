.class public Loauth/signpost/signature/HmacSha256MessageSigner;
.super Loauth/signpost/signature/OAuthMessageSigner;
.source "HmacSha256MessageSigner.java"


# static fields
.field private static final MAC_NAME:Ljava/lang/String; = "HmacSHA256"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loauth/signpost/signature/OAuthMessageSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "HMAC-SHA256"

    return-object v0
.end method

.method public sign(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    const-string v1, "UTF-8"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loauth/signpost/signature/HmacSha256MessageSigner;->getConsumerSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loauth/signpost/signature/HmacSha256MessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    new-instance v2, Loauth/signpost/signature/SignatureBaseString;

    invoke-direct {v2, p1, p2}, Loauth/signpost/signature/SignatureBaseString;-><init>(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    invoke-virtual {v2}, Loauth/signpost/signature/SignatureBaseString;->generate()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SBS"

    invoke-static {p2, p1}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Loauth/signpost/signature/HmacSha256MessageSigner;->base64Encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {p2, p1}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {p2, p1}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
