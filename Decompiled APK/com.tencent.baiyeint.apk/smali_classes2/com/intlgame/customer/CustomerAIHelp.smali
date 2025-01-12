.class public Lcom/intlgame/customer/CustomerAIHelp;
.super Ljava/lang/Object;
.source "CustomerAIHelp.java"

# interfaces
.implements Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;
.implements Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;
.implements Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;


# static fields
.field private static final CUSTOMER_CORE_SDK:Ljava/lang/String; = "AIHelp"

.field private static final INI_AIHELP_DOMAIN_DEFAULT:Ljava/lang/String; = "iegg.aihelp.net"

.field private static final INTL_AIHELP_DEBUG:Ljava/lang/String; = "AIHelp"

.field private static final INTL_CUSTOMER_NAME:Ljava/lang/String; = "INTLCustomer"

.field private static final KEY_HELP_CENTER:Ljava/lang/String; = "helpid"

.field private static final KEY_INI_AIHELP_DOMAIN:Ljava/lang/String; = "AIHELP_DOMAIN_NAME"

.field private static final MSG_CLOSE_WINDOW:Ljava/lang/String; = "close window"

.field private static final MSG_TYPE_CLOSE_WINDOW:I = 0x64

.field private static final MSG_TYPE_INITIALIZE:I = 0x65

.field private static final MSG_TYPE_INIT_FAIL:I = 0x1

.field private static final MSG_TYPE_INIT_SUCCESS:I = 0x0

.field private static final SPECIFICURL_ERROR_MSG:Ljava/lang/String; = "index error"

.field public static customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initAIHelp()V
    .locals 5

    const-string v0, "AIHelp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/tools/IT;->getDebugMode(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->enableLogging(Z)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v1, v1, Lcom/intlgame/customer/CustomerUserProfile;->sign:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/intlgame/customer/CustomerAIHelp;->getDomain()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v3, v3, Lcom/intlgame/customer/CustomerUserProfile;->langType:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v4, v3}, Lnet/aihelp/init/AIHelpSupport;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpInitializedCallback(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V

    invoke-static {p0}, Lnet/aihelp/init/AIHelpSupport;->setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V

    invoke-static {p0}, Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V

    return-void
.end method

.method private saveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p2

    move-object v1, p3

    sget-object v2, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/intlgame/customer/CustomerUserProfile;->sign:Ljava/lang/String;

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v2, v2, Lcom/intlgame/customer/CustomerUserProfile;->openId:Ljava/lang/String;

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v2, Lcom/intlgame/customer/CustomerUserProfile;

    invoke-direct {v2}, Lcom/intlgame/customer/CustomerUserProfile;-><init>()V

    sput-object v2, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    :cond_1
    sget-object v2, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iput-object v0, v2, Lcom/intlgame/customer/CustomerUserProfile;->sign:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->openId:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    const-string v1, ""

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->data:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p1

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->langType:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p4

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->nickName:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p5

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->gameLevel:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p6

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->pictureUrl:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p7

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->areaId:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p8

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->zoneId:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p9

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->serverId:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p10

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->region:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p11

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->roleId:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object v1, p12

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->customParam1:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->customParam2:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->customParam3:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->customParam4:Ljava/lang/String;

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/intlgame/customer/CustomerUserProfile;->customParam5:Ljava/lang/String;

    return-void
.end method

.method private updateAIHelpUserInfo()V
    .locals 2

    new-instance v0, Lnet/aihelp/config/UserConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/UserConfig$Builder;-><init>()V

    sget-object v1, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v1, v1, Lcom/intlgame/customer/CustomerUserProfile;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setUserId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    sget-object v1, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v1, v1, Lcom/intlgame/customer/CustomerUserProfile;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setUserName(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    sget-object v1, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v1, v1, Lcom/intlgame/customer/CustomerUserProfile;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setServerId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    sget-object v1, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v1, v1, Lcom/intlgame/customer/CustomerUserProfile;->customParam1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setUserTags(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    sget-object v1, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v1, v1, Lcom/intlgame/customer/CustomerUserProfile;->customParam2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setCustomData(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    invoke-virtual {v0}, Lnet/aihelp/config/UserConfig$Builder;->build()Lnet/aihelp/config/UserConfig;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->updateUserInfo(Lnet/aihelp/config/UserConfig;)V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 2

    const-string v0, "AIHELP_DOMAIN_NAME"

    const-string v1, "iegg.aihelp.net"

    invoke-static {v0, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCustomer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lnet/aihelp/init/AIHelpSupport;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLCustomer"

    const-string v2, "1.17.00.361"

    const-string v3, "AIHelp"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/intlgame/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p16}, Lcom/intlgame/customer/CustomerAIHelp;->saveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/intlgame/customer/CustomerAIHelp;->initAIHelp()V

    return-void
.end method

.method public onAIHelpInitialized()V
    .locals 3

    sget-object v0, Lcom/intlgame/customer/CustomerAIHelp;->customerUserProfile:Lcom/intlgame/customer/CustomerUserProfile;

    iget-object v0, v0, Lcom/intlgame/customer/CustomerUserProfile;->langType:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->updateSDKLanguage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/intlgame/customer/CustomerAIHelp;->updateAIHelpUserInfo()V

    new-instance v0, Lcom/intlgame/api/customer/INTLCustomerResult;

    invoke-direct {v0}, Lcom/intlgame/api/customer/INTLCustomerResult;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->ret_code_:I

    const-string v2, "AIHelp initialize success"

    iput-object v2, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->ret_msg_:Ljava/lang/String;

    const/16 v2, 0x44d

    iput v2, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->method_id_:I

    iput v1, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->msg_type_:I

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onAIHelpSessionClosed()V
    .locals 3

    new-instance v0, Lcom/intlgame/api/customer/INTLCustomerResult;

    invoke-direct {v0}, Lcom/intlgame/api/customer/INTLCustomerResult;-><init>()V

    const/16 v1, 0x44d

    iput v1, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->method_id_:I

    const/16 v2, 0x64

    iput v2, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->msg_type_:I

    const-string v2, "close window"

    iput-object v2, v0, Lcom/intlgame/api/customer/INTLCustomerResult;->ret_msg_:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public onSpecificUrlClicked(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "helpid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/intlgame/api/INTLSDK$Customer;->openSelfHelpPage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/intlgame/api/customer/INTLCustomerResult;

    invoke-direct {p1}, Lcom/intlgame/api/customer/INTLCustomerResult;-><init>()V

    const/16 v0, 0x270f

    iput v0, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->ret_code_:I

    iget v0, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->ret_code_:I

    invoke-static {v0}, Lcom/intlgame/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->ret_msg_:Ljava/lang/String;

    const/16 v0, 0x44d

    iput v0, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->method_id_:I

    const-string v1, "index error"

    iput-object v1, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->third_msg_:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public openUnreadMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/aihelp/config/UserConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/UserConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/config/UserConfig$Builder;->setUserId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig$Builder;->build()Lnet/aihelp/config/UserConfig;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->updateUserInfo(Lnet/aihelp/config/UserConfig;)V

    sget-object p1, Lnet/aihelp/config/enums/PushPlatform;->FIREBASE:Lnet/aihelp/config/enums/PushPlatform;

    invoke-static {p2, p1}, Lnet/aihelp/init/AIHelpSupport;->setPushTokenAndPlatform(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->setUploadLogPath(Ljava/lang/String;)V

    return-void
.end method

.method public showAllFAQSections()V
    .locals 3

    const-string v0, "AIHELP_ALWAYS_SHOW_HUMAN_SUPPORT"

    const/4 v1, 0x0

    const-string v2, "INTL"

    invoke-static {v0, v1, v2}, Lcom/intlgame/api/config/INTLConfig;->getBool(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    new-instance v1, Lnet/aihelp/config/ConversationConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/ConversationConfig$Builder;-><init>()V

    sget-object v2, Lnet/aihelp/config/enums/ConversationIntent;->BOT_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

    invoke-virtual {v1, v2}, Lnet/aihelp/config/ConversationConfig$Builder;->setConversationIntent(Lnet/aihelp/config/enums/ConversationIntent;)Lnet/aihelp/config/ConversationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/config/ConversationConfig$Builder;->setAlwaysShowHumanSupportButtonInBotPage(Z)Lnet/aihelp/config/ConversationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/ConversationConfig$Builder;->build()Lnet/aihelp/config/ConversationConfig;

    move-result-object v0

    new-instance v1, Lnet/aihelp/config/FaqConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/FaqConfig$Builder;-><init>()V

    sget-object v2, Lnet/aihelp/config/enums/ShowConversationMoment;->ALWAYS:Lnet/aihelp/config/enums/ShowConversationMoment;

    invoke-virtual {v1, v2}, Lnet/aihelp/config/FaqConfig$Builder;->setShowConversationMoment(Lnet/aihelp/config/enums/ShowConversationMoment;)Lnet/aihelp/config/FaqConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/config/FaqConfig$Builder;->setConversationConfig(Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/FaqConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/FaqConfig$Builder;->build()Lnet/aihelp/config/FaqConfig;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->showAllFAQSections(Lnet/aihelp/config/FaqConfig;)V

    return-void
.end method

.method public showFAQSection(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CustomerAIHelp"

    const-string v1, "INTLCustomer show faq section"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "INTLCustomer Error: wrong arguments, check if sectionId is null."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/intlgame/api/customer/INTLCustomerResult;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lcom/intlgame/api/customer/INTLCustomerResult;-><init>(I)V

    const/16 v0, 0x44f

    iput v0, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->method_id_:I

    const/16 v0, 0x44d

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "AIHELP_ALWAYS_SHOW_HUMAN_SUPPORT"

    const-string v2, "INTL"

    invoke-static {v1, v0, v2}, Lcom/intlgame/api/config/INTLConfig;->getBool(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    new-instance v1, Lnet/aihelp/config/ConversationConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/ConversationConfig$Builder;-><init>()V

    sget-object v2, Lnet/aihelp/config/enums/ConversationIntent;->BOT_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

    invoke-virtual {v1, v2}, Lnet/aihelp/config/ConversationConfig$Builder;->setConversationIntent(Lnet/aihelp/config/enums/ConversationIntent;)Lnet/aihelp/config/ConversationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/config/ConversationConfig$Builder;->setAlwaysShowHumanSupportButtonInBotPage(Z)Lnet/aihelp/config/ConversationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/ConversationConfig$Builder;->build()Lnet/aihelp/config/ConversationConfig;

    move-result-object v0

    new-instance v1, Lnet/aihelp/config/FaqConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/FaqConfig$Builder;-><init>()V

    sget-object v2, Lnet/aihelp/config/enums/ShowConversationMoment;->ALWAYS:Lnet/aihelp/config/enums/ShowConversationMoment;

    invoke-virtual {v1, v2}, Lnet/aihelp/config/FaqConfig$Builder;->setShowConversationMoment(Lnet/aihelp/config/enums/ShowConversationMoment;)Lnet/aihelp/config/FaqConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/config/FaqConfig$Builder;->setConversationConfig(Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/FaqConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/FaqConfig$Builder;->build()Lnet/aihelp/config/FaqConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/init/AIHelpSupport;->showFAQSection(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V

    return-void
.end method

.method public showSingleFAQ(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CustomerAIHelp"

    const-string v1, "INTLCustomer show single faq"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "INTLCustomer Error: wrong arguments, check if faqId is null."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/intlgame/api/customer/INTLCustomerResult;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lcom/intlgame/api/customer/INTLCustomerResult;-><init>(I)V

    const/16 v0, 0x450

    iput v0, p1, Lcom/intlgame/api/customer/INTLCustomerResult;->method_id_:I

    const/16 v0, 0x44d

    invoke-static {}, Lcom/intlgame/tools/IT;->createSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "AIHELP_ALWAYS_SHOW_HUMAN_SUPPORT"

    const-string v2, "INTL"

    invoke-static {v1, v0, v2}, Lcom/intlgame/api/config/INTLConfig;->getBool(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    new-instance v1, Lnet/aihelp/config/ConversationConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/ConversationConfig$Builder;-><init>()V

    sget-object v2, Lnet/aihelp/config/enums/ConversationIntent;->BOT_SUPPORT:Lnet/aihelp/config/enums/ConversationIntent;

    invoke-virtual {v1, v2}, Lnet/aihelp/config/ConversationConfig$Builder;->setConversationIntent(Lnet/aihelp/config/enums/ConversationIntent;)Lnet/aihelp/config/ConversationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/config/ConversationConfig$Builder;->setAlwaysShowHumanSupportButtonInBotPage(Z)Lnet/aihelp/config/ConversationConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/ConversationConfig$Builder;->build()Lnet/aihelp/config/ConversationConfig;

    move-result-object v0

    new-instance v1, Lnet/aihelp/config/FaqConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/FaqConfig$Builder;-><init>()V

    sget-object v2, Lnet/aihelp/config/enums/ShowConversationMoment;->ALWAYS:Lnet/aihelp/config/enums/ShowConversationMoment;

    invoke-virtual {v1, v2}, Lnet/aihelp/config/FaqConfig$Builder;->setShowConversationMoment(Lnet/aihelp/config/enums/ShowConversationMoment;)Lnet/aihelp/config/FaqConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/config/FaqConfig$Builder;->setConversationConfig(Lnet/aihelp/config/ConversationConfig;)Lnet/aihelp/config/FaqConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/FaqConfig$Builder;->build()Lnet/aihelp/config/FaqConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/init/AIHelpSupport;->showSingleFAQ(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V

    return-void
.end method

.method public updateLanguage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/aihelp/init/AIHelpSupport;->updateSDKLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public updateUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/intlgame/customer/CustomerAIHelp;->saveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/intlgame/customer/CustomerAIHelp;->updateAIHelpUserInfo()V

    return-void
.end method
