.class public interface abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
.super Ljava/lang/Object;
.source "CustomDispatchSource.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Event:",
        "Ljava/lang/Object;",
        "MergedEvent:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;"
    }
.end annotation


# virtual methods
.method public abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMergedEvent;"
        }
    .end annotation
.end method

.method public abstract merge(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEvent;)V"
        }
    .end annotation
.end method
