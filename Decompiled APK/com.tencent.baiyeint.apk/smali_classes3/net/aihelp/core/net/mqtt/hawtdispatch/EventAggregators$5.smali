.class final Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$5;
.super Ljava/lang/Object;
.source "EventAggregators.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/OrderedEventAggregator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->linkedList()Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/OrderedEventAggregator<",
        "TT;",
        "Ljava/util/LinkedList<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic mergeEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$5;->mergeEvent(Ljava/util/LinkedList;Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public mergeEvent(Ljava/util/LinkedList;Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;TT;)",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bridge synthetic mergeEvents(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/LinkedList;

    check-cast p2, Ljava/util/LinkedList;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$5;->mergeEvents(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public mergeEvents(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;",
            "Ljava/util/LinkedList<",
            "TT;>;)",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method
