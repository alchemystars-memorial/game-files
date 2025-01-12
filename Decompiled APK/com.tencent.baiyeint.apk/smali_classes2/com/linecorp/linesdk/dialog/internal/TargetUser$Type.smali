.class public final enum Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
.super Ljava/lang/Enum;
.source "TargetUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/TargetUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

.field public static final enum FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

.field public static final enum GROUP:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    const-string v1, "FRIEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    new-instance v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    const-string v3, "GROUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->GROUP:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->$VALUES:[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->$VALUES:[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    return-object v0
.end method
