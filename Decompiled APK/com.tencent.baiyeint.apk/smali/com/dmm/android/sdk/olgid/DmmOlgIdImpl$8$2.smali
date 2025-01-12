.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->onSuccess(Lcom/dmm/android/api/mobile/DmmApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;

.field final synthetic val$result:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;->val$result:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;

    iget-object v0, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;

    iget-object v1, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;

    iget-object v2, v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$8$2;->val$result:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-interface {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;->onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V

    return-void
.end method
