.class public Lcom/intlgame/api/webview/INTLWebView;
.super Ljava/lang/Object;
.source "INTLWebView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native callJS(Ljava/lang/String;)V
.end method

.method public static native getEncryptUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native openUrl(Ljava/lang/String;IZZZLjava/lang/String;)V
.end method

.method public static native setWebViewObserver(Lcom/intlgame/api/webview/INTLWebViewObserver;)V
.end method
