.class public final Lnet/aihelp/core/util/bus/NoSubscriberEvent;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"


# instance fields
.field public final eventBus:Lnet/aihelp/core/util/bus/EventBus;

.field public final originalEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/bus/NoSubscriberEvent;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    iput-object p2, p0, Lnet/aihelp/core/util/bus/NoSubscriberEvent;->originalEvent:Ljava/lang/Object;

    return-void
.end method
