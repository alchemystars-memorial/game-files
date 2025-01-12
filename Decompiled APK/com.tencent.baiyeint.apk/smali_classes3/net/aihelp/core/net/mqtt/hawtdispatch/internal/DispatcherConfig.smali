.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;
.super Ljava/lang/Object;
.source "DispatcherConfig.java"


# static fields
.field private static defaultDispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;


# instance fields
.field private drains:I

.field private jmx:Z

.field private label:Ljava/lang/String;

.field private profile:Z

.field private threads:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hawtdispatch"

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->label:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "hawtdispatch.threads"

    invoke-static {v1, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->threads:I

    const-string v0, "hawtdispatch.profile"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->profile:Z

    const-string v0, "hawtdispatch.drains"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->drains:I

    const-string v0, "hawtdispatch.jmx"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->jmx:Z

    return-void
.end method

.method public static create(Ljava/lang/String;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;-><init>()V

    iput-object p0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->label:Ljava/lang/String;

    iput p1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->threads:I

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->createDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDefaultDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
    .locals 2

    const-class v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->defaultDispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    if-nez v1, :cond_0

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;-><init>()V

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->createDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v1

    sput-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->defaultDispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    :cond_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->defaultDispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;)V

    return-object v0
.end method

.method public getDrains()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->drains:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getThreads()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->threads:I

    return v0
.end method

.method public isJmx()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->jmx:Z

    return v0
.end method

.method public isProfile()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->profile:Z

    return v0
.end method

.method public setDrains(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->drains:I

    return-void
.end method

.method public setJmx(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->jmx:Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->label:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->profile:Z

    return-void
.end method

.method public setThreads(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->threads:I

    return-void
.end method
