.class public final Lcom/centauri/oversea/business/CTIBaseRestore$e;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/CTIBaseRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/CTIBaseRestore;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$508(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    const-string p1, "APBaseRestore"

    const-string v0, "reProvide onFailure."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    const-string p1, "APBaseRestore"

    const-string v0, "reProvide onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 10

    iget v0, p1, Lg/h;->a:I

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    const-string v2, "&provideList="

    const-string v3, "&curIndex="

    const-string/jumbo v4, "threadId="

    const/4 v5, -0x1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v1

    iget-object v6, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v6}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    goto/16 :goto_e

    :cond_0
    sget-object v1, Lo/b$a;->a:Lo/b;

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk.oversea.restore"

    invoke-virtual {v1, v3, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    move-object v2, p1

    check-cast v2, Lq/k;

    iget-object v3, v2, Lq/k;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$600(Lcom/centauri/oversea/business/CTIBaseRestore;Ljava/lang/String;)V

    const/16 v1, 0x472

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/16 v4, 0x3fa

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_3

    const/16 v4, 0x1399

    if-eq v0, v4, :cond_3

    const/16 v4, 0x139c

    if-eq v0, v4, :cond_1

    const/16 v1, 0x1771

    if-eq v0, v1, :cond_4

    goto/16 :goto_c

    :cond_1
    iget-object v4, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object v6, v4, Lcom/centauri/oversea/business/CTIBaseRestore;->forbiddenPrompts:Ljava/util/List;

    invoke-static {v4}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v4

    iget-object v7, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v7}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v4, v4, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$508(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1, v3}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    goto/16 :goto_d

    :cond_3
    :goto_0
    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$508(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    goto/16 :goto_d

    :cond_4
    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-boolean v1, v0, Lcom/centauri/oversea/business/CTIBaseRestore;->isNeedVerifyRes:Z

    if-nez v1, :cond_15

    iget-object p1, v0, Lcom/centauri/oversea/business/CTIBaseRestore;->mChannel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object p1, p1, Lcom/centauri/oversea/business/CTIBaseRestore;->mChannel:Ljava/lang/String;

    const-string v0, "os_amazon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$700(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v1, v1, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_1
    if-ge v3, v2, :cond_13

    :goto_2
    sget-object v6, Lb/a;->e:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v1, v3

    aget-byte v3, v6, v3

    if-ge v7, v2, :cond_6

    if-eq v3, v5, :cond_5

    goto :goto_3

    :cond_5
    move v3, v7

    goto :goto_2

    :cond_6
    :goto_3
    if-ne v3, v5, :cond_7

    goto/16 :goto_a

    :cond_7
    :goto_4
    sget-object v6, Lb/a;->e:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    aget-byte v6, v6, v7

    if-ge v8, v2, :cond_9

    if-eq v6, v5, :cond_8

    goto :goto_5

    :cond_8
    move v7, v8

    goto :goto_4

    :cond_9
    :goto_5
    if-ne v6, v5, :cond_a

    goto :goto_a

    :cond_a
    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v7, v6, 0x30

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v3, v7

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_6
    add-int/lit8 v3, v8, 0x1

    aget-byte v7, v1, v8

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_b

    goto :goto_a

    :cond_b
    sget-object v9, Lb/a;->e:[B

    aget-byte v7, v9, v7

    if-ge v3, v2, :cond_d

    if-eq v7, v5, :cond_c

    goto :goto_7

    :cond_c
    move v8, v3

    goto :goto_6

    :cond_d
    :goto_7
    if-ne v7, v5, :cond_e

    goto :goto_a

    :cond_e
    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v9, v7, 0x3c

    ushr-int/lit8 v9, v9, 0x2

    or-int/2addr v6, v9

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_8
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v1, v3

    if-ne v3, v8, :cond_f

    goto :goto_a

    :cond_f
    sget-object v9, Lb/a;->e:[B

    aget-byte v3, v9, v3

    if-ge v6, v2, :cond_11

    if-eq v3, v5, :cond_10

    goto :goto_9

    :cond_10
    move v3, v6

    goto :goto_8

    :cond_11
    :goto_9
    if-ne v3, v5, :cond_12

    goto :goto_a

    :cond_12
    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v3, v7

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v6

    goto :goto_1

    :cond_13
    :goto_a
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v2}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v1, v1, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_14
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$700(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_15
    instance-of p1, p1, Lq/k;

    if-eqz p1, :cond_16

    invoke-static {v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$700(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object p1

    iget-object v0, v2, Lq/k;->n:Ljava/lang/String;

    :goto_b
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_c
    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$508(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$400(Lcom/centauri/oversea/business/CTIBaseRestore;Z)V

    :goto_d
    return-void

    :cond_17
    :goto_e
    sget-object p1, Lo/b$a;->a:Lo/b;

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$500(Lcom/centauri/oversea/business/CTIBaseRestore;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$200(Lcom/centauri/oversea/business/CTIBaseRestore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.oversea.cash.restore"

    invoke-virtual {p1, v1, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$e;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    const-string v0, ""

    invoke-virtual {p1, v5, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    return-void
.end method
