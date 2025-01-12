.class public Loauth/signpost/signature/PlainTextMessageSigner;
.super Loauth/signpost/signature/OAuthMessageSigner;
.source "PlainTextMessageSigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loauth/signpost/signature/OAuthMessageSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "PLAINTEXT"

    return-object v0
.end method

.method public sign(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loauth/signpost/signature/PlainTextMessageSigner;->getConsumerSecret()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x26

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loauth/signpost/signature/PlainTextMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
