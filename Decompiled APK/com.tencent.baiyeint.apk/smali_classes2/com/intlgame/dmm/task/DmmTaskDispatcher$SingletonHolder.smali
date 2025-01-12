.class Lcom/intlgame/dmm/task/DmmTaskDispatcher$SingletonHolder;
.super Ljava/lang/Object;
.source "DmmTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/task/DmmTaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final mInstance:Lcom/intlgame/dmm/task/DmmTaskDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;-><init>(Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;)V

    sput-object v0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$SingletonHolder;->mInstance:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
