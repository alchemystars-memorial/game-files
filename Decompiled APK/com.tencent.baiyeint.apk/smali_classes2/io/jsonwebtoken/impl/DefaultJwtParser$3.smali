.class Lio/jsonwebtoken/impl/DefaultJwtParser$3;
.super Lio/jsonwebtoken/JwtHandlerAdapter;
.source "DefaultJwtParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/jsonwebtoken/impl/DefaultJwtParser;->parsePlaintextJws(Ljava/lang/String;)Lio/jsonwebtoken/Jws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/jsonwebtoken/JwtHandlerAdapter<",
        "Lio/jsonwebtoken/Jws<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/jsonwebtoken/impl/DefaultJwtParser;


# direct methods
.method constructor <init>(Lio/jsonwebtoken/impl/DefaultJwtParser;)V
    .locals 0

    iput-object p1, p0, Lio/jsonwebtoken/impl/DefaultJwtParser$3;->this$0:Lio/jsonwebtoken/impl/DefaultJwtParser;

    invoke-direct {p0}, Lio/jsonwebtoken/JwtHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaintextJws(Lio/jsonwebtoken/Jws;)Lio/jsonwebtoken/Jws;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/jsonwebtoken/Jws<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/jsonwebtoken/Jws<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic onPlaintextJws(Lio/jsonwebtoken/Jws;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/DefaultJwtParser$3;->onPlaintextJws(Lio/jsonwebtoken/Jws;)Lio/jsonwebtoken/Jws;

    move-result-object p1

    return-object p1
.end method
