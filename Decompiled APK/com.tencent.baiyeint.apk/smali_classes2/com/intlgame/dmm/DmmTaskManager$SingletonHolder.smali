.class final Lcom/intlgame/dmm/DmmTaskManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DmmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/DmmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/intlgame/dmm/DmmTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/intlgame/dmm/DmmTaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/dmm/DmmTaskManager;-><init>(Lcom/intlgame/dmm/DmmTaskManager$1;)V

    sput-object v0, Lcom/intlgame/dmm/DmmTaskManager$SingletonHolder;->instance:Lcom/intlgame/dmm/DmmTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/intlgame/dmm/DmmTaskManager;
    .locals 1

    sget-object v0, Lcom/intlgame/dmm/DmmTaskManager$SingletonHolder;->instance:Lcom/intlgame/dmm/DmmTaskManager;

    return-object v0
.end method
