.class Lnet/aihelp/core/net/http/callback/DownloadCallback$1;
.super Ljava/lang/Object;
.source "DownloadCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/http/callback/DownloadCallback;->successCallBack(Lnet/aihelp/core/net/http/callback/BaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/http/callback/DownloadCallback;

.field final synthetic val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/http/callback/DownloadCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$1;->this$0:Lnet/aihelp/core/net/http/callback/DownloadCallback;

    iput-object p2, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$1;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$1;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onReqSuccess(Ljava/lang/Object;)V

    return-void
.end method
