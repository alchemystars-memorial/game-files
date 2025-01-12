.class Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;
.super Ljava/lang/Object;
.source "DmmOlgIdBaseWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;->execute(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;->this$1:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;->this$1:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;

    iget-object v0, v0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;->this$0:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;

    iget-object v1, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;->val$params:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->onErrorCommand(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
