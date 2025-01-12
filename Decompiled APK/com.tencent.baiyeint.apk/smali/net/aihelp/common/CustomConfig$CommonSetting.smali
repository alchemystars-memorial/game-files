.class public Lnet/aihelp/common/CustomConfig$CommonSetting;
.super Ljava/lang/Object;
.source "CustomConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/common/CustomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonSetting"
.end annotation


# static fields
.field public static backgroundColorForAll:Ljava/lang/String; = "#FFFFFF"

.field public static backgroundImageForLandscape:Ljava/lang/String; = ""

.field public static backgroundImageForPortrait:Ljava/lang/String; = ""

.field public static commonNegativeFeedbackHint:Ljava/lang/String; = ""

.field public static commonPositiveFeedbackHint:Ljava/lang/String; = ""

.field public static highlightedColor:Ljava/lang/String; = "#FA8A1B"

.field public static interactElementTextColor:Ljava/lang/String; = "#1B8AFA"

.field public static isBackgroundRenderedWithImage:Z = false

.field public static isEvaluationForAnswerPageEnable:Z = false

.field public static isEvaluationForBotEnable:Z = false

.field public static isEvaluationForOperationEnable:Z = false

.field public static isFaqUnhelpfulFeedbackEnable:Z = false

.field public static isLandscape:Z = false

.field public static navigationBarAlpha:D = 1.0

.field public static navigationBarBackground:Ljava/lang/String; = "#FFFFFF"

.field public static privacyControlData:Lnet/aihelp/data/model/init/PrivacyControlEntity; = null

.field public static screenOrientation:I = 0x2

.field public static textColor:Ljava/lang/String; = "#333940"

.field public static upperBackgroundAlpha:D = 1.0

.field public static upperBackgroundColor:Ljava/lang/String; = "#F2F3F4"


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
