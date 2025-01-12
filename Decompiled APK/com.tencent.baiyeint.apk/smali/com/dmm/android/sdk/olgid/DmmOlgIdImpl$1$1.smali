.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->onSuccess(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;

.field final synthetic val$olgResult:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;->val$olgResult:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;

    iget-object v0, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;

    iget-object v1, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$1$1;->val$olgResult:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-interface {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;->onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V

    return-void
.end method
