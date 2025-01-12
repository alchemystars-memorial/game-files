.class Lio/jsonwebtoken/io/ExceptionPropagatingEncoder;
.super Ljava/lang/Object;
.source "ExceptionPropagatingEncoder.java"

# interfaces
.implements Lio/jsonwebtoken/io/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/jsonwebtoken/io/Encoder<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final encoder:Lio/jsonwebtoken/io/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/jsonwebtoken/io/Encoder<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/jsonwebtoken/io/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/jsonwebtoken/io/Encoder<",
            "TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Encoder cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/io/ExceptionPropagatingEncoder;->encoder:Lio/jsonwebtoken/io/Encoder;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/io/EncodingException;
        }
    .end annotation

    const-string v0, "Encode argument cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/jsonwebtoken/io/ExceptionPropagatingEncoder;->encoder:Lio/jsonwebtoken/io/Encoder;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/io/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lio/jsonwebtoken/io/EncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to encode input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/jsonwebtoken/io/EncodingException;

    invoke-direct {v1, v0, p1}, Lio/jsonwebtoken/io/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    throw p1
.end method
