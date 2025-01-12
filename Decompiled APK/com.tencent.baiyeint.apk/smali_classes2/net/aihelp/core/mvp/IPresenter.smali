.class public interface abstract Lnet/aihelp/core/mvp/IPresenter;
.super Ljava/lang/Object;
.source "IPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lnet/aihelp/core/mvp/IView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract attachView(Lnet/aihelp/core/mvp/IView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract detachView()V
.end method
