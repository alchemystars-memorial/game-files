.class Lnet/aihelp/core/ui/image/DeferredRequestCreator;
.super Ljava/lang/Object;
.source "DeferredRequestCreator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field callback:Lnet/aihelp/core/ui/image/Callback;

.field private final creator:Lnet/aihelp/core/ui/image/RequestCreator;

.field final target:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/RequestCreator;Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->creator:Lnet/aihelp/core/ui/image/RequestCreator;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->callback:Lnet/aihelp/core/ui/image/Callback;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->creator:Lnet/aihelp/core/ui/image/RequestCreator;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/RequestCreator;->clearTag()Lnet/aihelp/core/ui/image/RequestCreator;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->callback:Lnet/aihelp/core/ui/image/Callback;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->creator:Lnet/aihelp/core/ui/image/RequestCreator;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/RequestCreator;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPreDraw()Z
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    if-lez v3, :cond_3

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v2, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v2, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->creator:Lnet/aihelp/core/ui/image/RequestCreator;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/RequestCreator;->unfit()Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lnet/aihelp/core/ui/image/RequestCreator;->resize(II)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/ui/image/DeferredRequestCreator;->callback:Lnet/aihelp/core/ui/image/Callback;

    invoke-virtual {v2, v0, v3}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Callback;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
