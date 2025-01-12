.class public abstract Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;
.super Ljava/lang/Object;
.source "ServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;,
        Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STARTING;,
        Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$CallbackSupport;,
        Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;
    }
.end annotation


# static fields
.field public static final CREATED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

.field public static final STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

.field public static final STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;


# instance fields
.field protected _serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->CREATED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->CREATED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method protected abstract _start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method protected abstract _stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method protected abstract getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method protected getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    return-object v0
.end method

.method public final start(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public final start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public final stop(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public final stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;-><init>(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
