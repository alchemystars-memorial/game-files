.class public final enum Lcom/linecorp/linesdk/internal/IdTokenKeyType;
.super Ljava/lang/Enum;
.source "IdTokenKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/internal/IdTokenKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/internal/IdTokenKeyType;

.field public static final enum JWK:Lcom/linecorp/linesdk/internal/IdTokenKeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    const-string v1, "JWK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/internal/IdTokenKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->JWK:Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    aput-object v0, v1, v2

    sput-object v1, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->$VALUES:[Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/IdTokenKeyType;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/internal/IdTokenKeyType;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->$VALUES:[Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/internal/IdTokenKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    return-object v0
.end method
