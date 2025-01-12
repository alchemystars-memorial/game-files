.class Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;
.super Ljava/lang/Object;
.source "AIHelpCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/http/callback/AIHelpCallback;->successCallBack(Ljava/lang/Object;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/http/callback/AIHelpCallback;

.field final synthetic val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/http/callback/AIHelpCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;->this$0:Lnet/aihelp/core/net/http/callback/AIHelpCallback;

    iput-object p2, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iput-object p3, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onReqSuccess(Ljava/lang/Object;)V

    return-void
.end method
