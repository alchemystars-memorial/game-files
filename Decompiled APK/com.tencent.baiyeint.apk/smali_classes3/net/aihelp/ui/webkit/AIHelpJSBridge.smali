.class public Lnet/aihelp/ui/webkit/AIHelpJSBridge;
.super Ljava/lang/Object;
.source "AIHelpJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/webkit/AIHelpJSBridge$Holder;
    }
.end annotation


# static fields
.field private static final CONFIG_ORIENTATION_AUTO:Ljava/lang/String; = "1"

.field private static final CONFIG_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "3"

.field private static final CONFIG_ORIENTATION_PORTRAIT:Ljava/lang/String; = "2"

.field private static final INTENT_TO_CALL_NATIVE_METHOD:Ljava/lang/String; = "jsCallNative"

.field private static final INTENT_TO_FINISH_PAGE:Ljava/lang/String; = "closeWebView"

.field private static final INTENT_TO_OPEN_NEW_LINK:Ljava/lang/String; = "OpenUrlInINTLBrowser"

.field private static final INTENT_TO_SET_FULLSCREEN:Ljava/lang/String; = "setFullScreen"

.field private static final INTENT_TO_UPDATE_ORIENTATION:Ljava/lang/String; = "setScreenOrientation"


# instance fields
.field private fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishPage()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lnet/aihelp/ui/webkit/AIHelpJSBridge;
    .locals 1

    invoke-static {}, Lnet/aihelp/ui/webkit/AIHelpJSBridge$Holder;->access$000()Lnet/aihelp/ui/webkit/AIHelpJSBridge;

    move-result-object v0

    return-object v0
.end method

.method private openNewLink(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateFullScreen(Z)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x800

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    return-void
.end method

.method private updateScreenOrientation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public callJs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleJSMessages(Landroidx/fragment/app/Fragment;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->fragment:Landroidx/fragment/app/Fragment;

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "INTLMethod"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "setScreenOrientation"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "OpenUrlInINTLBrowser"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "closeWebView"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "setFullScreen"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "jsCallNative"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "screenOrientation"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->updateScreenOrientation(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "isFullScreen"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->updateFullScreen(Z)V

    goto :goto_1

    :cond_3
    const-string p3, "ParamKey"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->openNewLink(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpJSBridge;->finishPage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x21c765c2 -> :sswitch_4
        -0x13a69223 -> :sswitch_3
        -0x73fbcff -> :sswitch_2
        -0x27492df -> :sswitch_1
        0x3c5b3582 -> :sswitch_0
    .end sparse-switch
.end method
