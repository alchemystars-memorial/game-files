.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11$1;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;

    iget-object v0, v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;->val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;

    iget-object v1, v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11$1;->this$1:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;

    iget-object v2, v2, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$11;->val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    invoke-interface {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;->onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V

    return-void
.end method
