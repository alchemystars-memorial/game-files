.class Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;
.super Ljava/lang/Object;
.source "DmmOlgIdImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;->publishInternalSession(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

.field final synthetic val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

.field final synthetic val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;->val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;->val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;->val$callback:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;->this$0:Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdImpl$10;->val$kind:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;

    sget-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-interface {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;->onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)V

    return-void
.end method
