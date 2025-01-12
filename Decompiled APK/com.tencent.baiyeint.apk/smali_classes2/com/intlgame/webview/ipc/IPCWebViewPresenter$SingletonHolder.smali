.class Lcom/intlgame/webview/ipc/IPCWebViewPresenter$SingletonHolder;
.super Ljava/lang/Object;
.source "IPCWebViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/ipc/IPCWebViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;-><init>(Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;)V

    sput-object v0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$SingletonHolder;->instance:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;
    .locals 1

    sget-object v0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$SingletonHolder;->instance:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    return-object v0
.end method
