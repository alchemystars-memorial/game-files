.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->getOlgId(Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

.field final synthetic val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

.field final synthetic val$result:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iput-object p4, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->val$result:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->val$callback:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->val$progress:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    iget-object v3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$7;->val$result:Lcom/dmm/android/sdk/olgid/DmmOlgIdResultImpl;

    invoke-interface {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdCallback;->onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;)V

    return-void
.end method
