.class Lio/jsonwebtoken/io/Base64UrlEncoder;
.super Lio/jsonwebtoken/io/Base64Encoder;
.source "Base64UrlEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lio/jsonwebtoken/io/Base64;->URL_SAFE:Lio/jsonwebtoken/io/Base64;

    invoke-direct {p0, v0}, Lio/jsonwebtoken/io/Base64Encoder;-><init>(Lio/jsonwebtoken/io/Base64;)V

    return-void
.end method
