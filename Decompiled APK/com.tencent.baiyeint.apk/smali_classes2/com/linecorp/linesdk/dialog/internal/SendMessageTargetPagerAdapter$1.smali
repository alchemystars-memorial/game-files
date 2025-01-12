.class synthetic Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;
.super Ljava/lang/Object;
.source "SendMessageTargetPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;->$SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I

    :try_start_0
    sget-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTargetPagerAdapter$1;->$SwitchMap$com$linecorp$linesdk$dialog$internal$TargetUser$Type:[I

    sget-object v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->GROUP:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
