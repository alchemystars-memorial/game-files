.class Lnet/aihelp/init/AIHelpCore$1;
.super Ljava/lang/Object;
.source "AIHelpCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpCore;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/init/AIHelpCore;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$trimApiKey:Ljava/lang/String;

.field final synthetic val$trimAppId:Ljava/lang/String;

.field final synthetic val$trimDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/init/AIHelpCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    iput-object p2, p0, Lnet/aihelp/init/AIHelpCore$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/init/AIHelpCore$1;->val$trimApiKey:Ljava/lang/String;

    iput-object p4, p0, Lnet/aihelp/init/AIHelpCore$1;->val$trimDomain:Ljava/lang/String;

    iput-object p5, p0, Lnet/aihelp/init/AIHelpCore$1;->val$trimAppId:Ljava/lang/String;

    iput-object p6, p0, Lnet/aihelp/init/AIHelpCore$1;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore$1;->val$context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lnet/aihelp/init/AIHelpCore;->access$002(Lnet/aihelp/init/AIHelpCore;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    iget-object v1, p0, Lnet/aihelp/init/AIHelpCore$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/init/AIHelpCore;->access$102(Lnet/aihelp/init/AIHelpCore;Landroid/content/Context;)Landroid/content/Context;

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    invoke-static {v1}, Lnet/aihelp/init/AIHelpCore;->access$100(Lnet/aihelp/init/AIHelpCore;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/config/AIHelpContext;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lnet/aihelp/exception/AIHelpCrashHandler;->init()V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    new-instance v7, Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/init/AIHelpCore;->access$100(Lnet/aihelp/init/AIHelpCore;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/init/AIHelpCore$1;->val$trimApiKey:Ljava/lang/String;

    iget-object v4, p0, Lnet/aihelp/init/AIHelpCore$1;->val$trimDomain:Ljava/lang/String;

    iget-object v5, p0, Lnet/aihelp/init/AIHelpCore$1;->val$trimAppId:Ljava/lang/String;

    iget-object v6, p0, Lnet/aihelp/init/AIHelpCore$1;->val$language:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/data/logic/InitPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lnet/aihelp/init/AIHelpCore;->access$202(Lnet/aihelp/init/AIHelpCore;Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v0

    const-string v1, "sp_log_toggle"

    invoke-virtual {v0, v1}, Lnet/aihelp/utils/SpUtil;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->initLog(Z)V

    :cond_1
    invoke-static {}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->getInstance()Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    invoke-static {v1}, Lnet/aihelp/init/AIHelpCore;->access$100(Lnet/aihelp/init/AIHelpCore;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    invoke-static {v0}, Lnet/aihelp/init/AIHelpCore;->access$200(Lnet/aihelp/init/AIHelpCore;)Lnet/aihelp/data/logic/InitPresenter;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    invoke-static {v1}, Lnet/aihelp/init/AIHelpCore;->access$300(Lnet/aihelp/init/AIHelpCore;)Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/InitPresenter;->loadUpListeners(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V

    iget-object v0, p0, Lnet/aihelp/init/AIHelpCore$1;->this$0:Lnet/aihelp/init/AIHelpCore;

    invoke-static {v0}, Lnet/aihelp/init/AIHelpCore;->access$200(Lnet/aihelp/init/AIHelpCore;)Lnet/aihelp/data/logic/InitPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/logic/InitPresenter;->doInitForAIHelp()V

    return-void
.end method
