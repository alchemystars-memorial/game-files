.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;
.super Ljava/lang/Object;
.source "EventAggregators.java"


# static fields
.field public static final INTEGER_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTEGER_OR:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_OR:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->INTEGER_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$2;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$2;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->LONG_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$3;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$3;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->INTEGER_OR:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$4;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$4;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->LONG_OR:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashSet()Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TT;",
            "Ljava/util/HashSet<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$6;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$6;-><init>()V

    return-object v0
.end method

.method public static linkedList()Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TT;",
            "Ljava/util/LinkedList<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$5;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators$5;-><init>()V

    return-object v0
.end method
