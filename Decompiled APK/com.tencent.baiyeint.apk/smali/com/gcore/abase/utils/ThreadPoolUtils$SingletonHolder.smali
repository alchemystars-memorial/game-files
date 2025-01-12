.class Lcom/gcore/abase/utils/ThreadPoolUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcore/abase/utils/ThreadPoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final THREAD_POOL_UTILS:Lcom/gcore/abase/utils/ThreadPoolUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gcore/abase/utils/ThreadPoolUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gcore/abase/utils/ThreadPoolUtils;-><init>(Lcom/gcore/abase/utils/ThreadPoolUtils$1;)V

    sput-object v0, Lcom/gcore/abase/utils/ThreadPoolUtils$SingletonHolder;->THREAD_POOL_UTILS:Lcom/gcore/abase/utils/ThreadPoolUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/gcore/abase/utils/ThreadPoolUtils;
    .locals 1

    sget-object v0, Lcom/gcore/abase/utils/ThreadPoolUtils$SingletonHolder;->THREAD_POOL_UTILS:Lcom/gcore/abase/utils/ThreadPoolUtils;

    return-object v0
.end method
