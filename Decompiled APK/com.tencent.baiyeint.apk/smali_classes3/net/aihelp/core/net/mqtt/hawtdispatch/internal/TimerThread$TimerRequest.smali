.class final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;
.super Ljava/lang/Object;
.source "TimerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerRequest"
.end annotation


# instance fields
.field target:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field time:J

.field type:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

.field unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;-><init>()V

    return-void
.end method
