.class public final enum Lnet/aihelp/data/localize/config/TextHelper;
.super Ljava/lang/Enum;
.source "TextHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/config/TextHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/config/TextHelper;

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/config/TextHelper;

.field private static final TEXT_COMMON_NEGATIVE_HINT:I = 0x2

.field private static final TEXT_COMMON_POSITIVE_HINT:I = 0x1

.field private static final TEXT_CS_INPUT_HINT:I = 0x3

.field private static final TEXT_CS_INVITE_EVALUATE:I = 0x4

.field private static final TEXT_CS_NAVIGATION_TITLE:I = 0x1

.field private static final TEXT_CS_WELCOME_MESSAGE:I = 0x2

.field private static final TEXT_FAQ_CS_ENTRANCE:I = 0x5

.field private static final TEXT_FAQ_HOT_TOPIC_TITLE:I = 0x3

.field private static final TEXT_FAQ_NAVIGATION_TITLE:I = 0x1

.field private static final TEXT_FAQ_SEARCH_HINT:I = 0x2

.field private static final TEXT_FAQ_SECTION_TITLE:I = 0x4

.field private static final TYPE_COMMON_SETTINGS:I = 0x3

.field private static final TYPE_CUSTOMER_SERVICE:I = 0x2

.field private static final TYPE_HELP_CENTER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/aihelp/data/localize/config/TextHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/config/TextHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/config/TextHelper;->INSTANCE:Lnet/aihelp/data/localize/config/TextHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/config/TextHelper;

    aput-object v0, v1, v2

    sput-object v1, Lnet/aihelp/data/localize/config/TextHelper;->$VALUES:[Lnet/aihelp/data/localize/config/TextHelper;

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

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/config/TextHelper;
    .locals 1

    const-class v0, Lnet/aihelp/data/localize/config/TextHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/config/TextHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/config/TextHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/config/TextHelper;->$VALUES:[Lnet/aihelp/data/localize/config/TextHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/config/TextHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/config/TextHelper;

    return-object v0
.end method


# virtual methods
.method public prepareDataSource()V
    .locals 9

    const/16 v0, 0x3f3

    :try_start_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_e

    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "textType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "contentType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "content"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v3, 0x5

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    sput-object v2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqCSEntranceText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sput-object v2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSectionTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sput-object v2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqHotTopicsTitle:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sput-object v2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSearchHint:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sput-object v2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqNavigationTitle:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-ne v3, v7, :cond_a

    if-eq v4, v8, :cond_9

    if-eq v4, v7, :cond_8

    if-eq v4, v6, :cond_7

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    sput-object v2, Lnet/aihelp/common/CustomConfig$CustomerService;->csInviteEvaluate:Ljava/lang/String;

    goto :goto_1

    :cond_7
    sput-object v2, Lnet/aihelp/common/CustomConfig$CustomerService;->csInputHint:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sput-object v2, Lnet/aihelp/common/CustomConfig$CustomerService;->csWelcomeMessage:Ljava/lang/String;

    goto :goto_1

    :cond_9
    sput-object v2, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationTitle:Ljava/lang/String;

    goto :goto_1

    :cond_a
    if-ne v3, v6, :cond_d

    if-eq v4, v8, :cond_c

    if-eq v4, v7, :cond_b

    goto :goto_1

    :cond_b
    sput-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonNegativeFeedbackHint:Ljava/lang/String;

    goto :goto_1

    :cond_c
    sput-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonPositiveFeedbackHint:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqNavigationTitle:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSearchHint:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqHotTopicsTitle:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSectionTitle:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqCSEntranceText:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationTitle:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csWelcomeMessage:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csInputHint:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csInviteEvaluate:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonPositiveFeedbackHint:Ljava/lang/String;

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonNegativeFeedbackHint:Ljava/lang/String;

    return-void
.end method
