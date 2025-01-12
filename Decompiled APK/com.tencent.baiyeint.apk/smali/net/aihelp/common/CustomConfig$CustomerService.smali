.class public Lnet/aihelp/common/CustomConfig$CustomerService;
.super Ljava/lang/Object;
.source "CustomConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/common/CustomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomerService"
.end annotation


# static fields
.field public static csBotSupportPortrait:Ljava/lang/String; = ""

.field public static csEvaluateMaxCount:I = 0x3

.field public static csInputHint:Ljava/lang/String; = ""

.field public static csInviteEvaluate:Ljava/lang/String; = ""

.field public static csManualSupportPortrait:Ljava/lang/String; = ""

.field public static csNavigationBarTitleIcon:Ljava/lang/String; = ""

.field public static csNavigationTitle:Ljava/lang/String; = ""

.field public static csUserPortrait:Ljava/lang/String; = ""

.field public static csWelcomeMessage:Ljava/lang/String; = ""

.field public static isBotResolveQueryEnable:Z = false

.field public static isCsTitleIconVisible:Z = false

.field public static isEvaluateBadServiceEnable:Z = true

.field public static isHistoryChatEnable:Z = false

.field public static isMessageTimestampVisible:Z = false

.field public static isNicknameVisible:Z = false

.field public static isPortraitVisible:Z = false

.field public static isTicketRatingEnable:Z = true

.field public static isUnhelpfulFaqStoryNodeEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
