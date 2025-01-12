.class Lnet/aihelp/core/util/viewer/ViewerLayout$1$1;
.super Ljava/lang/Object;
.source "ViewerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/viewer/ViewerLayout$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/util/viewer/ViewerLayout$1;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/viewer/ViewerLayout$1;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$1$1;->this$1:Lnet/aihelp/core/util/viewer/ViewerLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$1$1;->this$1:Lnet/aihelp/core/util/viewer/ViewerLayout$1;

    iget-object v0, v0, Lnet/aihelp/core/util/viewer/ViewerLayout$1;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->access$100(Lnet/aihelp/core/util/viewer/ViewerLayout;)V

    return-void
.end method
