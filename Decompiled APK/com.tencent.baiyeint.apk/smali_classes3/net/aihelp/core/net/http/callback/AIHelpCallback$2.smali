.class Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;
.super Ljava/lang/Object;
.source "AIHelpCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/http/callback/AIHelpCallback;->failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/http/callback/AIHelpCallback;

.field final synthetic val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/http/callback/AIHelpCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->this$0:Lnet/aihelp/core/net/http/callback/AIHelpCallback;

    iput-object p2, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iput-object p3, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$url:Ljava/lang/String;

    iput p4, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$errorCode:I

    iput-object p5, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$url:Ljava/lang/String;

    iget v2, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$errorCode:I

    iget-object v3, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;->val$errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
