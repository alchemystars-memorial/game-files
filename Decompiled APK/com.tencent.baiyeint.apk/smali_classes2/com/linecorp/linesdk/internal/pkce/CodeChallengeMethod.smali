.class public final enum Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;
.super Ljava/lang/Enum;
.source "CodeChallengeMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

.field public static final enum PLAIN:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

.field public static final enum S256:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    const-string v3, "plain"

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->PLAIN:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    new-instance v1, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    const-string v3, "S256"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->S256:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->$VALUES:[Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->$VALUES:[Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->value:Ljava/lang/String;

    return-object v0
.end method
