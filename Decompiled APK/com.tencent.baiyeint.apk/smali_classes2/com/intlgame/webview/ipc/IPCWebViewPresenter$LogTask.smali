.class Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;
.super Ljava/lang/Object;
.source "IPCWebViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/ipc/IPCWebViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogTask"
.end annotation


# instance fields
.field private final level:I

.field private final log:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;->level:I

    iput-object p2, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;->log:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;->level:I

    return p0
.end method

.method static synthetic access$600(Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$LogTask;->log:Ljava/lang/String;

    return-object p0
.end method
