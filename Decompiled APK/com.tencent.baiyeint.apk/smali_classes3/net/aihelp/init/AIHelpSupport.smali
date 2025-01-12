.class public Lnet/aihelp/init/AIHelpSupport;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static additionalSupportFor(Lnet/aihelp/config/enums/PublishCountryOrRegion;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$19;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$19;-><init>(Lnet/aihelp/config/enums/PublishCountryOrRegion;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static enableLogging(Z)V
    .locals 1

    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/init/AIHelpCore;->enableLogging(Z)V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.1"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lnet/aihelp/init/AIHelpSupport;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/exception/AIHelpInitException;
        }
    .end annotation

    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/init/AIHelpCore;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isAIHelpShowing()Z
    .locals 1

    sget-boolean v0, Lnet/aihelp/common/Const;->IS_SDK_SHOWING:Z

    return v0
.end method

.method public static resetUserInfo()V
    .locals 2

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/aihelp/config/UserConfig$Builder;

    invoke-direct {v1}, Lnet/aihelp/config/UserConfig$Builder;-><init>()V

    invoke-static {v0}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/config/UserConfig$Builder;->setUserId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setServerId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Lnet/aihelp/config/UserConfig$Builder;->setUserName(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/UserConfig$Builder;->build()Lnet/aihelp/config/UserConfig;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->updateUserInfo(Lnet/aihelp/config/UserConfig;)V

    :cond_0
    return-void
.end method

.method public static setNetworkCheckHostAddress(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/aihelp/init/AIHelpSupport;->setNetworkCheckHostAddress(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V

    return-void
.end method

.method public static setNetworkCheckHostAddress(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$13;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/init/AIHelpSupport$13;-><init>(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOnAIHelpInitializedCallback(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$1;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$1;-><init>(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$16;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$16;-><init>(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$15;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$15;-><init>(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOnOperationUnreadChangedCallback(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$17;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$17;-><init>(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOnSpecificFormSubmittedCallback(Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$14;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$14;-><init>(Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$18;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$18;-><init>(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setPushTokenAndPlatform(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$12;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/init/AIHelpSupport$12;-><init>(Ljava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setUploadLogPath(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$11;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$11;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAllFAQSections()V
    .locals 1

    new-instance v0, Lnet/aihelp/config/FaqConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/FaqConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/FaqConfig$Builder;->build()Lnet/aihelp/config/FaqConfig;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->showAllFAQSections(Lnet/aihelp/config/FaqConfig;)V

    return-void
.end method

.method public static showAllFAQSections(Lnet/aihelp/config/FaqConfig;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$3;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$3;-><init>(Lnet/aihelp/config/FaqConfig;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showConversation()V
    .locals 1

    new-instance v0, Lnet/aihelp/config/ConversationConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/ConversationConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/ConversationConfig$Builder;->build()Lnet/aihelp/config/ConversationConfig;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->showConversation(Lnet/aihelp/config/ConversationConfig;)V

    return-void
.end method

.method public static showConversation(Lnet/aihelp/config/ConversationConfig;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$2;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$2;-><init>(Lnet/aihelp/config/ConversationConfig;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showFAQSection(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/aihelp/config/FaqConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/FaqConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/FaqConfig$Builder;->build()Lnet/aihelp/config/FaqConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/init/AIHelpSupport;->showFAQSection(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V

    return-void
.end method

.method public static showFAQSection(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$4;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/init/AIHelpSupport$4;-><init>(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showOperation()V
    .locals 1

    new-instance v0, Lnet/aihelp/config/OperationConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/OperationConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/OperationConfig$Builder;->build()Lnet/aihelp/config/OperationConfig;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/init/AIHelpSupport;->showOperation(Lnet/aihelp/config/OperationConfig;)V

    return-void
.end method

.method public static showOperation(Lnet/aihelp/config/OperationConfig;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$6;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$6;-><init>(Lnet/aihelp/config/OperationConfig;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showSingleFAQ(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/aihelp/config/FaqConfig$Builder;

    invoke-direct {v0}, Lnet/aihelp/config/FaqConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/config/FaqConfig$Builder;->build()Lnet/aihelp/config/FaqConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/init/AIHelpSupport;->showSingleFAQ(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V

    return-void
.end method

.method public static showSingleFAQ(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$5;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/init/AIHelpSupport$5;-><init>(Ljava/lang/String;Lnet/aihelp/config/FaqConfig;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$7;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$7;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startUnreadMessageCountPolling(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$10;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$10;-><init>(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateSDKLanguage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$9;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$9;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateUserInfo(Lnet/aihelp/config/UserConfig;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/init/AIHelpSupport$8;

    invoke-direct {v1, p0}, Lnet/aihelp/init/AIHelpSupport$8;-><init>(Lnet/aihelp/config/UserConfig;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
