.class public Lcom/intlgame/webview/SameProcessWebViewActivity$SameProcessConfig;
.super Ljava/lang/Object;
.source "SameProcessWebViewActivity.java"

# interfaces
.implements Lcom/intlgame/webview/ipc/WebViewConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/SameProcessWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameProcessConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
