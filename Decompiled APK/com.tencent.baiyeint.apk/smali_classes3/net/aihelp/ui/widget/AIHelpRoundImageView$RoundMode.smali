.class public final enum Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;
.super Ljava/lang/Enum;
.source "AIHelpRoundImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/AIHelpRoundImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoundMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

.field public static final enum ROUND_DRAWABLE:Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

.field public static final enum ROUND_VIEW:Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    const-string v1, "ROUND_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;->ROUND_VIEW:Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    new-instance v1, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    const-string v3, "ROUND_DRAWABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;->ROUND_DRAWABLE:Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;->$VALUES:[Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;
    .locals 1

    const-class v0, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;
    .locals 1

    sget-object v0, Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;->$VALUES:[Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    invoke-virtual {v0}, [Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/ui/widget/AIHelpRoundImageView$RoundMode;

    return-object v0
.end method
