.class public Lcom/facebook/gamingservices/ContextCreateDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "ContextCreateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/ContextCreateDialog$FacebookAppHandler;,
        Lcom/facebook/gamingservices/ContextCreateDialog$WebHandler;,
        Lcom/facebook/gamingservices/ContextCreateDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/gamingservices/model/ContextCreateContent;",
        "Lcom/facebook/gamingservices/ContextCreateDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private mCallback:Lcom/facebook/FacebookCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/gamingservices/ContextCreateDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    sget v0, Lcom/facebook/gamingservices/ContextCreateDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/ContextCreateDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/ContextCreateDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1

    sget v0, Lcom/facebook/gamingservices/ContextCreateDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/gamingservices/ContextCreateDialog;)Lcom/facebook/FacebookCallback;
    .locals 0

    iget-object p0, p0, Lcom/facebook/gamingservices/ContextCreateDialog;->mCallback:Lcom/facebook/FacebookCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/gamingservices/ContextCreateDialog;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextCreateDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private showForCloud(Lcom/facebook/gamingservices/model/ContextCreateContent;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextCreateDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p2

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/facebook/gamingservices/ContextCreateDialog$1;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/ContextCreateDialog$1;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextCreateContent;->getSuggestedPlayerID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "id"

    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextCreateContent;->getSuggestedPlayerID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object p1, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_CREATE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    invoke-static {p2, v1, v0, p1}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/facebook/gamingservices/ContextCreateDialog;->mCallback:Lcom/facebook/FacebookCallback;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/facebook/FacebookException;

    const-string v0, "Couldn\'t prepare Context Create Dialog"

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Attempted to open ContextCreateContent with an invalid access token"

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canShow(Lcom/facebook/gamingservices/model/ContextCreateContent;)Z
    .locals 3

    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/facebook/gamingservices/ContextCreateDialog$FacebookAppHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/facebook/gamingservices/ContextCreateDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/gamingservices/ContextCreateDialog$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/gamingservices/ContextCreateDialog$FacebookAppHandler;->canShow(Lcom/facebook/gamingservices/model/ContextCreateContent;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/facebook/gamingservices/ContextCreateDialog$WebHandler;

    invoke-direct {v0, p0, v2}, Lcom/facebook/gamingservices/ContextCreateDialog$WebHandler;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/gamingservices/ContextCreateDialog$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/gamingservices/ContextCreateDialog$WebHandler;->canShow(Lcom/facebook/gamingservices/model/ContextCreateContent;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/facebook/gamingservices/model/ContextCreateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/ContextCreateDialog;->canShow(Lcom/facebook/gamingservices/model/ContextCreateContent;)Z

    move-result p1

    return p1
.end method

.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 2

    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextCreateDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/gamingservices/model/ContextCreateContent;",
            "Lcom/facebook/gamingservices/ContextCreateDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/facebook/gamingservices/ContextCreateDialog$FacebookAppHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/gamingservices/ContextCreateDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/gamingservices/ContextCreateDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/facebook/gamingservices/ContextCreateDialog$WebHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/gamingservices/ContextCreateDialog$WebHandler;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/gamingservices/ContextCreateDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 2

    iput-object p2, p0, Lcom/facebook/gamingservices/ContextCreateDialog;->mCallback:Lcom/facebook/FacebookCallback;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/gamingservices/ContextCreateDialog$2;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/gamingservices/ContextCreateDialog$2;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextCreateDialog;->getRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/gamingservices/ContextCreateDialog$3;

    invoke-direct {v1, p0, p2}, Lcom/facebook/gamingservices/ContextCreateDialog$3;-><init>(Lcom/facebook/gamingservices/ContextCreateDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method protected showImpl(Lcom/facebook/gamingservices/model/ContextCreateContent;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/gamingservices/ContextCreateDialog;->showForCloud(Lcom/facebook/gamingservices/model/ContextCreateContent;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/gamingservices/model/ContextCreateContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/ContextCreateDialog;->showImpl(Lcom/facebook/gamingservices/model/ContextCreateContent;Ljava/lang/Object;)V

    return-void
.end method
