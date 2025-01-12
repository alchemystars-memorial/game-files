.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->onFailed(Lcom/dmm/android/sdk/olgid/auth/DmmAuthResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;

.field final synthetic val$error:Lcom/dmm/android/lib/auth/model/HttpError;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->val$error:Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;

    iget-object v0, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;

    iget-object v1, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;

    iget-object v2, v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13;->val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->val$error:Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-virtual {v3}, Lcom/dmm/android/lib/auth/model/HttpError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$13$2;->val$error:Lcom/dmm/android/lib/auth/model/HttpError;

    invoke-virtual {v4}, Lcom/dmm/android/lib/auth/model/HttpError;->getLogMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;->onApiFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
