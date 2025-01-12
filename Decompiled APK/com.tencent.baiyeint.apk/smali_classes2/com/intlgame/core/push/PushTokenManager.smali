.class public Lcom/intlgame/core/push/PushTokenManager;
.super Ljava/lang/Object;
.source "PushTokenManager.java"


# static fields
.field private static sInstance:Lcom/intlgame/core/push/PushTokenManager;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/core/interfaces/INewToken;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/core/push/PushTokenManager;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/core/push/PushTokenManager;->token:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/intlgame/core/push/PushTokenManager;
    .locals 1

    sget-object v0, Lcom/intlgame/core/push/PushTokenManager;->sInstance:Lcom/intlgame/core/push/PushTokenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/intlgame/core/push/PushTokenManager;

    invoke-direct {v0}, Lcom/intlgame/core/push/PushTokenManager;-><init>()V

    sput-object v0, Lcom/intlgame/core/push/PushTokenManager;->sInstance:Lcom/intlgame/core/push/PushTokenManager;

    :cond_0
    sget-object v0, Lcom/intlgame/core/push/PushTokenManager;->sInstance:Lcom/intlgame/core/push/PushTokenManager;

    return-object v0
.end method


# virtual methods
.method public addTokenListener(Lcom/intlgame/core/interfaces/INewToken;)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/core/push/PushTokenManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intlgame/core/push/PushTokenManager;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/intlgame/core/interfaces/INewToken;->onNewToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshToken(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/intlgame/core/push/PushTokenManager;->token:Ljava/lang/String;

    iget-object p1, p0, Lcom/intlgame/core/push/PushTokenManager;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/intlgame/core/push/PushTokenManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/core/push/PushTokenManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/core/interfaces/INewToken;

    iget-object v1, p0, Lcom/intlgame/core/push/PushTokenManager;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/intlgame/core/interfaces/INewToken;->onNewToken(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
