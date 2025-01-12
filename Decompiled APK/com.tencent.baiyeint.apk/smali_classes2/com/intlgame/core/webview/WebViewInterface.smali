.class public interface abstract Lcom/intlgame/core/webview/WebViewInterface;
.super Ljava/lang/Object;
.source "WebViewInterface.java"


# static fields
.field public static final KEY_METHOD_ID:Ljava/lang/String; = "INTL_KEY_METHOD_ID"

.field public static final KEY_OBSERVER_ID:Ljava/lang/String; = "INTL_KEY_OBSERVER_ID"

.field public static final KEY_SEQ_ID:Ljava/lang/String; = "INTL_KEY_SEQ_ID"

.field public static final KEY_WEBVIEW_SAME_PROCESS:Ljava/lang/String; = "isSameProcessWebView"


# virtual methods
.method public abstract callJS(Ljava/lang/String;)V
.end method

.method public abstract close()V
.end method

.method public abstract onShareCallback(Ljava/lang/String;)V
.end method

.method public abstract openUrl(Lcom/intlgame/api/webview/INTLWebViewReqInfo;Lcom/intlgame/api/INTLBaseParams;I)V
.end method
