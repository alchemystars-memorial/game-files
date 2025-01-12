.class final Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$4;
.super Ljava/lang/Object;
.source "EventAggregators.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeEvent(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    or-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$4;->mergeEvent(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public mergeEvents(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    or-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeEvents(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$4;->mergeEvents(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
