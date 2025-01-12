.class Lnet/aihelp/init/AIHelpCore;
.super Ljava/lang/Object;
.source "AIHelpCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/init/AIHelpCore$Holder;
    }
.end annotation


# instance fields
.field private initListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

.field private mActivity:Landroid/app/Activity;

.field private mAppContext:Landroid/content/Context;

.field private mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/init/AIHelpCore$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lnet/aihelp/init/AIHelpCore;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lnet/aihelp/init/AIHelpCore;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lnet/aihelp/init/AIHelpCore;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Lnet/aihelp/init/AIHelpCore;)Lnet/aihelp/data/logic/InitPresenter;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    return-object p0
.end method

.method static synthetic access$202(Lnet/aihelp/init/AIHelpCore;Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/data/logic/InitPresenter;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    return-object p1
.end method

.method static synthetic access$300(Lnet/aihelp/init/AIHelpCore;)Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/init/AIHelpCore;->initListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    return-object p0
.end method

.method private generateAppIdFromAppKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p3, "https://"

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "http://"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AIHelpSDKToAndroidAppId"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/net/http/config/HttpConfig;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_platform_"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lnet/aihelp/init/AIHelpCore;
    .locals 1

    invoke-static {}, Lnet/aihelp/init/AIHelpCore$Holder;->access$400()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    return-object v0
.end method

.method private isInitStillInProgress()Z
    .locals 3

    sget-object v0, Lnet/aihelp/config/AIHelpContext;->successfullyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "AIHelp"

    const-string v2, "AIHelp is during initialization process at this time, the API you called is not available, please try again later."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    const-string v2, "aihelp_network_no_connect"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isPresenterStillNull()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    if-nez v0, :cond_0

    const-string v0, "AIHelp"

    const-string v1, "Please ensure AIHelpSupport#init is called at the very first place before you call any other API."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method additionalSupportFor(Lnet/aihelp/config/enums/PublishCountryOrRegion;)V
    .locals 0

    sput-object p1, Lnet/aihelp/common/Const;->countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    return-void
.end method

.method enableLogging(Z)V
    .locals 0

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->initLog(Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/exception/AIHelpInitException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    invoke-direct {p0, p2, p3, p4}, Lnet/aihelp/init/AIHelpCore;->generateAppIdFromAppKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lnet/aihelp/utils/SchemaUtil;->validateInitializeCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object p2

    new-instance p3, Lnet/aihelp/init/AIHelpCore$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/aihelp/init/AIHelpCore$1;-><init>(Lnet/aihelp/init/AIHelpCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lnet/aihelp/exception/AIHelpInitException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :catch_1
    move-exception p1

    throw p1
.end method

.method setNetworkCheckHostAddress(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/data/logic/InitPresenter;->setNetworkCheckHostAddress(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setOnAIHelpInitializedCallback(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpCore;->initListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->loadUpListeners(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setOnOperationUnreadChangedCallback(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->setOnOperationUnreadChangedCallback(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setOnSpecificFormSubmittedCallback(Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->setOnSpecificFormSubmittedCallback(Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setPushTokenAndPlatform(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {p2}, Lnet/aihelp/config/enums/PushPlatform;->getValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/data/logic/InitPresenter;->postCrmPushTokenInfo(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method setUploadLogPath(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->setUploadLogPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showAllFAQSections(Lnet/aihelp/config/FaqConfig;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isInitStillInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/aihelp/ui/helper/StatisticHelper;->whenAllFAQSectionsVisible(Z)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {p1}, Lnet/aihelp/config/FaqConfig;->getConversationConfig()Lnet/aihelp/config/ConversationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->updateConversationFields(Lnet/aihelp/config/ConversationConfig;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/aihelp/common/IntentValues;->getShowFAQIntent(Landroid/content/Context;Lnet/aihelp/config/FaqConfig;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/IntentValues;->wrapForApplicationContext(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showConversation(Lnet/aihelp/config/ConversationConfig;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isInitStillInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->updateConversationFields(Lnet/aihelp/config/ConversationConfig;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/aihelp/common/IntentValues;->getShowSupportIntent(Landroid/content/Context;Lnet/aihelp/config/ConversationConfig;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/IntentValues;->wrapForApplicationContext(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method showFAQSection(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isInitStillInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {p2}, Lnet/aihelp/config/FaqConfig;->getConversationConfig()Lnet/aihelp/config/ConversationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->updateConversationFields(Lnet/aihelp/config/ConversationConfig;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lnet/aihelp/common/IntentValues;->getShowFAQSectionIntent(Landroid/content/Context;Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/IntentValues;->wrapForApplicationContext(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showOperation(Lnet/aihelp/config/OperationConfig;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isInitStillInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {p1}, Lnet/aihelp/config/OperationConfig;->getConversationConfig()Lnet/aihelp/config/ConversationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->updateConversationFields(Lnet/aihelp/config/ConversationConfig;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/aihelp/common/IntentValues;->getShowOperateIntent(Landroid/content/Context;Lnet/aihelp/config/OperationConfig;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/IntentValues;->wrapForApplicationContext(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method showSingleFAQ(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isInitStillInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {p2}, Lnet/aihelp/config/FaqConfig;->getConversationConfig()Lnet/aihelp/config/ConversationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->updateConversationFields(Lnet/aihelp/config/ConversationConfig;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lnet/aihelp/common/IntentValues;->getShowSingleFAQIntent(Landroid/content/Context;Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/IntentValues;->wrapForApplicationContext(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method showUrl(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/aihelp/common/IntentValues;->getUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/IntentValues;->wrapForApplicationContext(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "AIHelp"

    const-string v0, "AIHelpSupport showUrl illegal argument"

    invoke-static {p1, v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method startUnreadMessageCountPolling(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->startUnreadMessagePolling(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateSDKLanguage(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isInitStillInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->updateSDKLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method updateUserInfo(Lnet/aihelp/config/UserConfig;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/init/AIHelpCore;->isPresenterStillNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore;->mInitPresenter:Lnet/aihelp/data/logic/InitPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/InitPresenter;->updateUserProfile(Lnet/aihelp/config/UserConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
