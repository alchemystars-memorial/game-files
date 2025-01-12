.class Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/foundation/swig/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogInstanceHolder"
.end annotation


# static fields
.field private static volatile instance:Lcom/intlgame/foundation/swig/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_GetInstance()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/intlgame/foundation/swig/Log;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/intlgame/foundation/swig/Log;-><init>(JZ)V

    sput-object v2, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;->instance:Lcom/intlgame/foundation/swig/Log;

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/intlgame/foundation/swig/Log;
    .locals 5

    sget-object v0, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;->instance:Lcom/intlgame/foundation/swig/Log;

    if-nez v0, :cond_1

    const-class v0, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;->instance:Lcom/intlgame/foundation/swig/Log;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/intlgame/foundation/swig/INTLFoundationJNI;->Log_GetInstance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/intlgame/foundation/swig/Log;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/intlgame/foundation/swig/Log;-><init>(JZ)V

    sput-object v3, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;->instance:Lcom/intlgame/foundation/swig/Log;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/intlgame/foundation/swig/Log$LogInstanceHolder;->instance:Lcom/intlgame/foundation/swig/Log;

    return-object v0
.end method
