.class public final Lio/jsonwebtoken/Jwts;
.super Ljava/lang/Object;
.source "Jwts.java"


# static fields
.field private static final MAP_ARG:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    aput-object v2, v0, v1

    sput-object v0, Lio/jsonwebtoken/Jwts;->MAP_ARG:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lio/jsonwebtoken/JwtBuilder;
    .locals 1

    const-string v0, "io.jsonwebtoken.impl.DefaultJwtBuilder"

    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/JwtBuilder;

    return-object v0
.end method

.method public static claims()Lio/jsonwebtoken/Claims;
    .locals 1

    const-string v0, "io.jsonwebtoken.impl.DefaultClaims"

    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/Claims;

    return-object v0
.end method

.method public static claims(Ljava/util/Map;)Lio/jsonwebtoken/Claims;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/Claims;"
        }
    .end annotation

    sget-object v0, Lio/jsonwebtoken/Jwts;->MAP_ARG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "io.jsonwebtoken.impl.DefaultClaims"

    invoke-static {p0, v0, v1}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/jsonwebtoken/Claims;

    return-object p0
.end method

.method public static header()Lio/jsonwebtoken/Header;
    .locals 1

    const-string v0, "io.jsonwebtoken.impl.DefaultHeader"

    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/Header;

    return-object v0
.end method

.method public static header(Ljava/util/Map;)Lio/jsonwebtoken/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/Header;"
        }
    .end annotation

    sget-object v0, Lio/jsonwebtoken/Jwts;->MAP_ARG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "io.jsonwebtoken.impl.DefaultHeader"

    invoke-static {p0, v0, v1}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/jsonwebtoken/Header;

    return-object p0
.end method

.method public static jwsHeader()Lio/jsonwebtoken/JwsHeader;
    .locals 1

    const-string v0, "io.jsonwebtoken.impl.DefaultJwsHeader"

    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/JwsHeader;

    return-object v0
.end method

.method public static jwsHeader(Ljava/util/Map;)Lio/jsonwebtoken/JwsHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/JwsHeader;"
        }
    .end annotation

    sget-object v0, Lio/jsonwebtoken/Jwts;->MAP_ARG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "io.jsonwebtoken.impl.DefaultJwsHeader"

    invoke-static {p0, v0, v1}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/jsonwebtoken/JwsHeader;

    return-object p0
.end method

.method public static parser()Lio/jsonwebtoken/JwtParser;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "io.jsonwebtoken.impl.DefaultJwtParser"

    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/JwtParser;

    return-object v0
.end method

.method public static parserBuilder()Lio/jsonwebtoken/JwtParserBuilder;
    .locals 1

    const-string v0, "io.jsonwebtoken.impl.DefaultJwtParserBuilder"

    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/JwtParserBuilder;

    return-object v0
.end method
