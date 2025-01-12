.class public interface abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
.super Ljava/lang/Object;
.source "EventAggregator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Event:",
        "Ljava/lang/Object;",
        "MergedEvent:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract mergeEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMergedEvent;TEvent;)TMergedEvent;"
        }
    .end annotation
.end method

.method public abstract mergeEvents(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMergedEvent;TMergedEvent;)TMergedEvent;"
        }
    .end annotation
.end method
