.class public final Lcom/centauri/oversea/business/h5/webview/MWebView$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;->c:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;->c:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/centauri/oversea/business/h5/webview/MWebView;->b(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
