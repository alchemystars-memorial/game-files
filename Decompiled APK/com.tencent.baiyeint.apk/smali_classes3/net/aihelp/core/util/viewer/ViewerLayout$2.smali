.class Lnet/aihelp/core/util/viewer/ViewerLayout$2;
.super Ljava/lang/Object;
.source "ViewerLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/viewer/ViewerLayout;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/viewer/ViewerLayout;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$2;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout$2;->this$0:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->access$100(Lnet/aihelp/core/util/viewer/ViewerLayout;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
