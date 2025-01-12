.class Lio/jsonwebtoken/io/Base64Encoder;
.super Lio/jsonwebtoken/io/Base64Support;
.source "Base64Encoder.java"

# interfaces
.implements Lio/jsonwebtoken/io/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/jsonwebtoken/io/Base64Support;",
        "Lio/jsonwebtoken/io/Encoder<",
        "[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lio/jsonwebtoken/io/Base64;->DEFAULT:Lio/jsonwebtoken/io/Base64;

    invoke-direct {p0, v0}, Lio/jsonwebtoken/io/Base64Support;-><init>(Lio/jsonwebtoken/io/Base64;)V

    return-void
.end method

.method constructor <init>(Lio/jsonwebtoken/io/Base64;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/jsonwebtoken/io/Base64Support;-><init>(Lio/jsonwebtoken/io/Base64;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/io/EncodingException;
        }
    .end annotation

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/jsonwebtoken/io/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/io/EncodingException;
        }
    .end annotation

    const-string v0, "byte array argument cannot be null"

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/jsonwebtoken/io/Base64Encoder;->base64:Lio/jsonwebtoken/io/Base64;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/jsonwebtoken/io/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
