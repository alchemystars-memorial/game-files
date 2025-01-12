.class public Lnet/aihelp/core/util/bus/meta/SimpleSubscriberInfo;
.super Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;
.source "SimpleSubscriberInfo.java"


# instance fields
.field private final methodInfos:[Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z[Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/aihelp/core/util/bus/meta/AbstractSubscriberInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Z)V

    iput-object p3, p0, Lnet/aihelp/core/util/bus/meta/SimpleSubscriberInfo;->methodInfos:[Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;

    return-void
.end method


# virtual methods
.method public declared-synchronized getSubscriberMethods()[Lnet/aihelp/core/util/bus/SubscriberMethod;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/meta/SimpleSubscriberInfo;->methodInfos:[Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;

    array-length v0, v0

    new-array v1, v0, [Lnet/aihelp/core/util/bus/SubscriberMethod;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lnet/aihelp/core/util/bus/meta/SimpleSubscriberInfo;->methodInfos:[Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;

    aget-object v3, v3, v2

    iget-object v5, v3, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->methodName:Ljava/lang/String;

    iget-object v6, v3, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->eventType:Ljava/lang/Class;

    iget-object v7, v3, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->threadMode:Lnet/aihelp/core/util/bus/ThreadMode;

    iget v8, v3, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->priority:I

    iget-boolean v9, v3, Lnet/aihelp/core/util/bus/meta/SubscriberMethodInfo;->sticky:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lnet/aihelp/core/util/bus/meta/SimpleSubscriberInfo;->createSubscriberMethod(Ljava/lang/String;Ljava/lang/Class;Lnet/aihelp/core/util/bus/ThreadMode;IZ)Lnet/aihelp/core/util/bus/SubscriberMethod;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
