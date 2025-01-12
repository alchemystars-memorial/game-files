.class public final enum Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
.super Ljava/lang/Enum;
.source "LineAuthenticationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BotPrompt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

.field public static final enum aggressive:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

.field public static final enum normal:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->normal:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    new-instance v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    const-string v3, "aggressive"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->aggressive:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->$VALUES:[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->$VALUES:[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    return-object v0
.end method
