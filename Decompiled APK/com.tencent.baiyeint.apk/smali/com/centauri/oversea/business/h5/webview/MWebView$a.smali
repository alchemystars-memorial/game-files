.class public final Lcom/centauri/oversea/business/h5/webview/MWebView$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$a;->b:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$a;->b:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->a(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V

    return-void
.end method
