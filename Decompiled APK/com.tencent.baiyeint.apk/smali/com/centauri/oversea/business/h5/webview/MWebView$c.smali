.class public final Lcom/centauri/oversea/business/h5/webview/MWebView$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$c;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$c;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->c(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    return-void
.end method
