.class public final enum Lnet/aihelp/data/localize/config/StyleSheetHelper;
.super Ljava/lang/Enum;
.source "StyleSheetHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/config/StyleSheetHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/config/StyleSheetHelper;

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/config/StyleSheetHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/aihelp/data/localize/config/StyleSheetHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/config/StyleSheetHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/config/StyleSheetHelper;->INSTANCE:Lnet/aihelp/data/localize/config/StyleSheetHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/config/StyleSheetHelper;

    aput-object v0, v1, v2

    sput-object v1, Lnet/aihelp/data/localize/config/StyleSheetHelper;->$VALUES:[Lnet/aihelp/data/localize/config/StyleSheetHelper;

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

.method private prepareCommonConfig(Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;)V
    .locals 2

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getNavBar()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getNavBar()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;->getColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getNavBar()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;->getTransparency()D

    move-result-wide v0

    sput-wide v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getVertical()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->backgroundColorForAll:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getVerticalImgUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->backgroundImageForPortrait:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getHorizontalImgUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->backgroundImageForLandscape:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getFrontColor()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getFrontColor()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;->getColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getFrontColor()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;->getTransparency()D

    move-result-wide v0

    sput-wide v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getTextColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getHighlightColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->getButtonColor()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    return-void
.end method

.method private prepareCustomerServiceConfig(Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;)V
    .locals 1

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;->getNavBar()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationBarTitleIcon:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;->getRobotImgUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csBotSupportPortrait:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;->getCustomerImgUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;->getUserImgUrl()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/CustomConfig$CustomerService;->csUserPortrait:Ljava/lang/String;

    return-void
.end method

.method private prepareHelpCenterConfig(Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;)V
    .locals 1

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->getNavBar()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqNavigationBarTitleIcon:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->getNoticeBar()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqNotificationIcon:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->getFaqList()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqHotTopicTitleIcon:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->getFaqSectionList()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqSectionTitleIcon:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/config/StyleSheetHelper;
    .locals 1

    const-class v0, Lnet/aihelp/data/localize/config/StyleSheetHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/config/StyleSheetHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/config/StyleSheetHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/config/StyleSheetHelper;->$VALUES:[Lnet/aihelp/data/localize/config/StyleSheetHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/config/StyleSheetHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/config/StyleSheetHelper;

    return-object v0
.end method


# virtual methods
.method public prepareDataSource()V
    .locals 2

    const/16 v0, 0x3ee

    :try_start_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lnet/aihelp/data/model/config/StyleSheetEntity;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->toJavaObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/config/StyleSheetEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity;->getGeneral()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/config/StyleSheetHelper;->prepareCommonConfig(Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;)V

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity;->getHelp()Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/config/StyleSheetHelper;->prepareHelpCenterConfig(Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;)V

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/StyleSheetEntity;->getOnLine()Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/data/localize/config/StyleSheetHelper;->prepareCustomerServiceConfig(Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
