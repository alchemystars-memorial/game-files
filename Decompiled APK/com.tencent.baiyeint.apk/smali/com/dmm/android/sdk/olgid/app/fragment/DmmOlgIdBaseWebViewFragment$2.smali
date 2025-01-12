.class Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;
.super Ljava/lang/Object;
.source "DmmOlgIdBaseWebViewFragment.java"

# interfaces
.implements Lcom/dmm/android/js/DmmJavascriptInterfaceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;->this$0:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;->this$0:Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2$1;-><init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
