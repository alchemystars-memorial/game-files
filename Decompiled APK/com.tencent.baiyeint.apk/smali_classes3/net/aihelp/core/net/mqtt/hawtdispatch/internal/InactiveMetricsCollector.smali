.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;
.source "InactiveMetricsCollector.java"


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public track(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 0

    return-object p1
.end method
