.class public Lnet/aihelp/data/localize/LocalizeHelper;
.super Ljava/lang/Object;
.source "LocalizeHelper.java"


# static fields
.field public static final FLAG_BUSINESS_LOGIC:I = 0x3ef

.field public static final FLAG_FAQ_HOT_TOPIC:I = 0x3f1

.field public static final FLAG_FAQ_SECTION:I = 0x3e9

.field public static final FLAG_FEEDBACK_OPINION:I = 0x3f0

.field public static final FLAG_LOCALE:I = 0x3ed

.field public static final FLAG_OP:I = 0x3ea

.field public static final FLAG_PROCESS:I = 0x3f2

.field public static final FLAG_STORY:I = 0x3eb

.field public static final FLAG_STYLE_SHEET:I = 0x3ee

.field public static final FLAG_TEXT:I = 0x3f3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getDataAfterLocalizeFailed(I)V

    return-void
.end method

.method private static getDataAfterLocalizeFailed(I)V
    .locals 4

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    sget-object v0, Lnet/aihelp/common/API;->FAQ_URL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/aihelp/common/API;->OP_URL:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lnet/aihelp/data/localize/LocalizeHelper$3;

    invoke-direct {v3, p0}, Lnet/aihelp/data/localize/LocalizeHelper$3;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestGetByAsync(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method public static getLocalizeDataFromUrl(I)V
    .locals 2

    const/16 v0, 0x3ea

    if-ne p0, v0, :cond_0

    sget-object v0, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/OperateHelper;->prepareHistoricDataSource()V

    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    invoke-static {}, Lnet/aihelp/data/localize/data/FaqHelper;->isFaqDataAlreadyPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/localize/LocalizeHelper$2;

    invoke-direct {v1, p0}, Lnet/aihelp/data/localize/LocalizeHelper$2;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestDownloadFile(ILnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method public static goFetchElvaBotData(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/localize/LocalizeHelper$1;

    invoke-direct {v1, p0}, Lnet/aihelp/data/localize/LocalizeHelper$1;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x3eb

    invoke-virtual {v0, p0, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestDownloadFile(ILnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method public static goFetchLocalizeData(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->goFetchElvaBotData(Landroid/content/Context;)V

    sget-boolean p0, Lnet/aihelp/common/Const;->TOGGLE_LOCALIZE_VIA_INIT:Z

    const/16 v0, 0x3e9

    if-eqz p0, :cond_0

    invoke-static {v0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isAlreadyLocalized(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getUrl(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isFallbackUrl(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {p0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource()V

    :cond_1
    :goto_0
    const/16 p0, 0x3ea

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3ed

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3ee

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3ef

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3f1

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3f3

    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    return-void
.end method

.method public static resetLocalizeData()V
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/FaqHelper;->reset()V

    sget-object v0, Lnet/aihelp/data/localize/data/OperateHelper;->INSTANCE:Lnet/aihelp/data/localize/data/OperateHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/OperateHelper;->reset()V

    sget-object v0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->INSTANCE:Lnet/aihelp/data/localize/data/LocaleStringHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/LocaleStringHelper;->reset()V

    sget-object v0, Lnet/aihelp/data/localize/config/TextHelper;->INSTANCE:Lnet/aihelp/data/localize/config/TextHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/config/TextHelper;->reset()V

    return-void
.end method
