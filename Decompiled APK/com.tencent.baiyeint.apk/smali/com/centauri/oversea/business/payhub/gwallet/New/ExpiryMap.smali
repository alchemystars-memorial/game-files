.class public Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private CIRCULATIONTIME:J

.field private DELAY:J

.field private EXPIRY_TIME:J

.field private expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private workMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x10

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->EXPIRY_TIME:J

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->CIRCULATIONTIME:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->DELAY:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    iput-wide p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->EXPIRY_TIME:J

    :cond_0
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;-><init>(IJ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;Ljava/lang/Object;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->checkExpiry(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)J
    .locals 2

    iget-wide v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->EXPIRY_TIME:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private checkExpiry(Ljava/lang/Object;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private removeExpiryKeys()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$1;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->checkExpiry(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->EXPIRY_TIME:J

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->expiryMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->removeExpiryKeys()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->workMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
