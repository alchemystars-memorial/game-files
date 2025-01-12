.class Lnet/aihelp/ui/HostActivity$1;
.super Ljava/lang/Object;
.source "HostActivity.java"

# interfaces
.implements Lnet/aihelp/core/ui/image/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/HostActivity;->updateWindowBackgroundImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/HostActivity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/HostActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/HostActivity$1;->this$0:Lnet/aihelp/ui/HostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/ui/HostActivity;->access$000()Landroid/view/Window;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lnet/aihelp/ui/HostActivity$1;->this$0:Lnet/aihelp/ui/HostActivity;

    invoke-virtual {v1}, Lnet/aihelp/ui/HostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
