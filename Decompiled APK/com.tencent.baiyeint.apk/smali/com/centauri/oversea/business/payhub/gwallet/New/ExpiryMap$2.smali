.class Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->putAll(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/Map$Entry<",
        "+TK;+TV;>;>;"
    }
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;->accept(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public accept(Ljava/util/Map$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-static {v4}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap$2;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/ExpiryMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
