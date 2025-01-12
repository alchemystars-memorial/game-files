.class Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$SingletonHolder;
.super Ljava/lang/Object;
.source "DmmAccessTokenUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final mInstance:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;-><init>(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$1;)V

    sput-object v0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$SingletonHolder;->mInstance:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;
    .locals 1

    sget-object v0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$SingletonHolder;->mInstance:Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    return-object v0
.end method
