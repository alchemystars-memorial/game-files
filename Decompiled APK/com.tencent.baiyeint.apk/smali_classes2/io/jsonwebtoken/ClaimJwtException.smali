.class public abstract Lio/jsonwebtoken/ClaimJwtException;
.super Lio/jsonwebtoken/JwtException;
.source "ClaimJwtException.java"


# static fields
.field public static final INCORRECT_EXPECTED_CLAIM_MESSAGE_TEMPLATE:Ljava/lang/String; = "Expected %s claim to be: %s, but was: %s."

.field public static final MISSING_EXPECTED_CLAIM_MESSAGE_TEMPLATE:Ljava/lang/String; = "Expected %s claim to be: %s, but was not present in the JWT claims."


# instance fields
.field private final claims:Lio/jsonwebtoken/Claims;

.field private final header:Lio/jsonwebtoken/Header;


# direct methods
.method protected constructor <init>(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/jsonwebtoken/ClaimJwtException;->header:Lio/jsonwebtoken/Header;

    iput-object p2, p0, Lio/jsonwebtoken/ClaimJwtException;->claims:Lio/jsonwebtoken/Claims;

    return-void
.end method

.method protected constructor <init>(Lio/jsonwebtoken/Header;Lio/jsonwebtoken/Claims;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lio/jsonwebtoken/ClaimJwtException;->header:Lio/jsonwebtoken/Header;

    iput-object p2, p0, Lio/jsonwebtoken/ClaimJwtException;->claims:Lio/jsonwebtoken/Claims;

    return-void
.end method


# virtual methods
.method public getClaims()Lio/jsonwebtoken/Claims;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/ClaimJwtException;->claims:Lio/jsonwebtoken/Claims;

    return-object v0
.end method

.method public getHeader()Lio/jsonwebtoken/Header;
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/ClaimJwtException;->header:Lio/jsonwebtoken/Header;

    return-object v0
.end method
