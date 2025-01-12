.class public Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;
.super Ljava/lang/Object;
.source "SubscriberMethodInfo.java"


# instance fields
.field final eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final methodName:Ljava/lang/String;

.field final priority:I

.field final sticky:Z

.field final threadMode:Lnet/aihelp/core/util/bus/ThreadMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v3, Lnet/aihelp/core/util/bus/ThreadMode;->POSTING:Lnet/aihelp/core/util/bus/ThreadMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/aihelp/core/util/bus/ThreadMode;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/aihelp/core/util/bus/ThreadMode;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->threadMode:Lnet/aihelp/core/util/bus/ThreadMode;

    iput-object p2, p0, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->eventType:Ljava/lang/Class;

    iput p4, p0, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->priority:I

    iput-boolean p5, p0, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->sticky:Z

    return-void
.end method
