.class public Lnet/aihelp/core/net/monitor/NetworkMonitorManager;
.super Ljava/lang/Object;
.source "NetworkMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;
    }
.end annotation


# static fields
.field private static final ANDROID_NET_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final TAG:Ljava/lang/String; = "NetWorkMonitor >>> : "

.field private static ourInstance:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;


# instance fields
.field private isFirstReceived:Z

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

.field private netWorkStateChangedMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->netWorkStateChangedMethodMap:Ljava/util/Map;

    new-instance v0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;-><init>(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)V

    iput-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->receiver:Landroid/content/BroadcastReceiver;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;-><init>(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;)V

    iput-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->isFirstReceived:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->getAPNType(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->postNetState(Lnet/aihelp/core/net/monitor/NetworkState;)V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private findMethod(Ljava/lang/Object;Ljava/lang/Class;)Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lnet/aihelp/core/net/monitor/NetworkState;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-class p2, Lnet/aihelp/core/net/monitor/NetworkMonitor;

    invoke-virtual {v3, p2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lnet/aihelp/core/net/monitor/NetworkMonitor;

    new-instance v0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;

    invoke-direct {v0}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;-><init>()V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lnet/aihelp/core/net/monitor/NetworkMonitor;->monitorFilter()[Lnet/aihelp/core/net/monitor/NetworkState;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->setNetworkState([Lnet/aihelp/core/net/monitor/NetworkState;)V

    :cond_2
    invoke-virtual {v0, v3}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->setMethod(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->setObject(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getAPNType(Landroid/content/Context;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    if-nez v1, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_8

    const/16 v0, 0xd

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    if-eq v1, v4, :cond_7

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    const/4 v0, 0x5

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_6

    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    :cond_6
    move v0, v5

    goto :goto_1

    :cond_7
    :goto_0
    move v0, v4

    :cond_8
    :goto_1
    return v0
.end method

.method public static getInstance()Lnet/aihelp/core/net/monitor/NetworkMonitorManager;
    .locals 2

    const-class v0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->ourInstance:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    if-nez v1, :cond_0

    new-instance v1, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-direct {v1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;-><init>()V

    sput-object v1, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->ourInstance:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->ourInstance:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initMonitor()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private invokeMethod(Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 5

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->getNetworkState()[Lnet/aihelp/core/net/monitor/NetworkState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p2, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->getObject()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private moveToSuperclass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "javax."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "androidx."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private onDestroy()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->isFirstReceived:Z

    :cond_0
    return-void
.end method

.method private postNetState(Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->netWorkStateChangedMethodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->netWorkStateChangedMethodMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;

    invoke-direct {p0, v1, p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->invokeMethod(Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;Lnet/aihelp/core/net/monitor/NetworkState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "NetworkMonitorManager init Context can not be null"

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->findMethod(Ljava/lang/Object;Ljava/lang/Class;)Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->netWorkStateChangedMethodMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->moveToSuperclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->netWorkStateChangedMethodMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->mNetworkCallback:Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
