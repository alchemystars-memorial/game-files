.class public final Lcom/uqm/crashsight/proguard/l;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private final h:Lcom/uqm/crashsight/proguard/h;

.field private final i:Lcom/uqm/crashsight/proguard/k;

.field private final j:I

.field private final k:Lcom/uqm/crashsight/proguard/j;

.field private final l:Lcom/uqm/crashsight/proguard/j;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;IIZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/j;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/proguard/l;->a:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/uqm/crashsight/proguard/l;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/l;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/proguard/l;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/uqm/crashsight/proguard/l;->q:J

    iput-wide v1, p0, Lcom/uqm/crashsight/proguard/l;->r:J

    iput-boolean v0, p0, Lcom/uqm/crashsight/proguard/l;->s:Z

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/l;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p4, p0, Lcom/uqm/crashsight/proguard/l;->e:[B

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/proguard/l;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/h;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/h;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/l;->h:Lcom/uqm/crashsight/proguard/h;

    invoke-static {}, Lcom/uqm/crashsight/proguard/k;->a()Lcom/uqm/crashsight/proguard/k;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/l;->i:Lcom/uqm/crashsight/proguard/k;

    iput p2, p0, Lcom/uqm/crashsight/proguard/l;->j:I

    iput-object p5, p0, Lcom/uqm/crashsight/proguard/l;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/uqm/crashsight/proguard/l;->n:Ljava/lang/String;

    iput-object p7, p0, Lcom/uqm/crashsight/proguard/l;->k:Lcom/uqm/crashsight/proguard/j;

    iget-object p1, p1, Lcom/uqm/crashsight/proguard/k;->a:Lcom/uqm/crashsight/proguard/j;

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/l;->l:Lcom/uqm/crashsight/proguard/j;

    iput p3, p0, Lcom/uqm/crashsight/proguard/l;->d:I

    if-lez p8, :cond_0

    iput p8, p0, Lcom/uqm/crashsight/proguard/l;->a:I

    :cond_0
    if-lez p9, :cond_1

    iput p9, p0, Lcom/uqm/crashsight/proguard/l;->b:I

    :cond_1
    iput-boolean p10, p0, Lcom/uqm/crashsight/proguard/l;->s:Z

    iput-object p11, p0, Lcom/uqm/crashsight/proguard/l;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;ZZ)V
    .locals 12

    const/4 v8, 0x2

    const/16 v9, 0x7530

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/uqm/crashsight/proguard/l;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;IIZLjava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V
    .locals 3

    iget p1, p0, Lcom/uqm/crashsight/proguard/l;->d:I

    const/16 v0, 0x276

    if-eq p1, v0, :cond_1

    const/16 v0, 0x280

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x348

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "userinfo"

    goto :goto_0

    :cond_1
    const-string p1, "crash"

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "[Upload] Success: %s"

    invoke-static {p1, p3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    iget-wide p3, p0, Lcom/uqm/crashsight/proguard/l;->q:J

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->r:J

    add-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/uqm/crashsight/proguard/l;->i:Lcom/uqm/crashsight/proguard/k;

    iget-boolean p3, p0, Lcom/uqm/crashsight/proguard/l;->s:Z

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/proguard/k;->a(Z)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->q:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->r:J

    add-long/2addr p3, v0

    iget-object p1, p0, Lcom/uqm/crashsight/proguard/l;->i:Lcom/uqm/crashsight/proguard/k;

    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/l;->s:Z

    invoke-virtual {p1, p3, p4, v0}, Lcom/uqm/crashsight/proguard/k;->a(JZ)V

    :cond_3
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/l;->k:Lcom/uqm/crashsight/proguard/j;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/proguard/j;->a(Z)V

    :cond_4
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/l;->l:Lcom/uqm/crashsight/proguard/j;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/proguard/j;->a(Z)V

    :cond_5
    return-void
.end method

.method private a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/common/strategy/a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;,
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "resp == null!"

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "resp result error %d"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "UTF-8"

    if-nez v1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v4

    sget v5, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a:I

    const-string v6, "gateway"

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/d;Z)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v4

    sget v5, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a:I

    const-string v6, "device"

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/d;Z)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result p2

    const/16 v1, 0x1fe

    if-ne p2, v1, :cond_6

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    if-nez p2, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;

    move-result-object p2

    if-nez p2, :cond_5

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getValueMapMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Ljava/util/Map;)V

    iget p1, p0, Lcom/uqm/crashsight/proguard/l;->d:I

    invoke-virtual {p3, p2, p1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)V

    invoke-virtual {p3, p2}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V

    :cond_6
    return v2
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/proguard/l;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/proguard/l;->p:I

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->q:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/l;->r:J

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "[Upload] Failed to upload for no status header."

    const/4 v3, 0x0

    :try_start_0
    iput v3, v1, Lcom/uqm/crashsight/proguard/l;->p:I

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/uqm/crashsight/proguard/l;->q:J

    iput-wide v4, v1, Lcom/uqm/crashsight/proguard/l;->r:J

    iget-object v4, v1, Lcom/uqm/crashsight/proguard/l;->e:[B

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const-string v0, "network is not available"

    invoke-direct {v1, v5, v3, v3, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz v4, :cond_1a

    array-length v0, v4

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string v0, "[Upload] Run upload task with cmd: %d"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, v1, Lcom/uqm/crashsight/proguard/l;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    if-eqz v0, :cond_19

    iget-object v7, v1, Lcom/uqm/crashsight/proguard/l;->h:Lcom/uqm/crashsight/proguard/h;

    if-nez v7, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "illegal local strategy"

    invoke-direct {v1, v5, v3, v3, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "tls"

    const-string v9, "1"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "prodId"

    iget-object v9, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v9}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "bundleId"

    iget-object v9, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v9, v9, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "appVer"

    iget-object v9, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v9, v9, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sdkName"

    const-string v9, "CrashSight"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Content-Type"

    const-string v9, "application/octet-stream"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/uqm/crashsight/proguard/l;->o:Ljava/util/Map;

    if-eqz v8, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    const-string v8, "cmd"

    iget v9, v1, Lcom/uqm/crashsight/proguard/l;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "platformId"

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sdkVer"

    iget-object v9, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v9, v9, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "strategylastUpdateTime"

    iget-wide v9, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "A22"

    if-eqz v0, :cond_5

    :try_start_2
    const-string v0, "model"

    iget-object v9, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v9}, Lcom/uqm/crashsight/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    iget-object v9, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v9, v9, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "redisKeyUuid"

    iget-object v8, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/uqm/crashsight/proguard/u;->a([BI)[B

    move-result-object v4

    if-nez v4, :cond_7

    const-string v0, "failed to zip request body"

    invoke-direct {v1, v5, v3, v3, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_7
    if-nez v4, :cond_8

    const-string v0, "failed to encrypt request body"

    invoke-direct {v1, v5, v3, v3, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_8
    iget-object v8, v1, Lcom/uqm/crashsight/proguard/l;->i:Lcom/uqm/crashsight/proguard/k;

    iget v9, v1, Lcom/uqm/crashsight/proguard/l;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/uqm/crashsight/proguard/k;->a(IJ)V

    iget-object v8, v1, Lcom/uqm/crashsight/proguard/l;->m:Ljava/lang/String;

    const/4 v9, -0x1

    move v10, v3

    move v11, v10

    :goto_1
    add-int/lit8 v12, v10, 0x1

    iget v13, v1, Lcom/uqm/crashsight/proguard/l;->a:I

    if-ge v10, v13, :cond_18

    if-le v12, v6, :cond_9

    const-string v10, "[Upload] Failed to upload last time, wait and try(%d) again."

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v3

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v10, v1, Lcom/uqm/crashsight/proguard/l;->b:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/u;->b(J)V

    iget v10, v1, Lcom/uqm/crashsight/proguard/l;->a:I

    if-ne v12, v10, :cond_9

    const-string v8, "[Upload] Use the back-up url at the last time: %s"

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/uqm/crashsight/proguard/l;->n:Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-static {v8, v10}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/uqm/crashsight/proguard/l;->n:Ljava/lang/String;

    :cond_9
    const-string v10, "[Upload] Send %d bytes"

    new-array v11, v6, [Ljava/lang/Object;

    array-length v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v3

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/uqm/crashsight/proguard/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v3

    iget v13, v1, Lcom/uqm/crashsight/proguard/l;->d:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v11, v14

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v10, v1, Lcom/uqm/crashsight/proguard/l;->h:Lcom/uqm/crashsight/proguard/h;

    invoke-virtual {v10, v8, v4, v1, v7}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;[BLcom/uqm/crashsight/proguard/l;Ljava/util/Map;)[B

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v11, "[Upload] Failed to upload(%d): %s"

    if-nez v10, :cond_a

    :try_start_4
    const-string v10, "Failed to upload for no response!"

    new-array v13, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    aput-object v10, v13, v6

    invoke-static {v11, v13}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v11, v6

    move v10, v12

    goto/16 :goto_1

    :cond_a
    iget-object v13, v1, Lcom/uqm/crashsight/proguard/l;->h:Lcom/uqm/crashsight/proguard/h;

    iget-object v13, v13, Lcom/uqm/crashsight/proguard/h;->a:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v15, "status"

    if-eqz v13, :cond_d

    :try_start_5
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v16

    if-nez v16, :cond_b

    goto :goto_2

    :cond_b
    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    const-string v5, "[Upload] Headers does not contain %s"

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v15, v14, v3

    invoke-static {v5, v14}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    move v5, v6

    goto :goto_4

    :cond_d
    :goto_2
    const-string v5, "[Upload] Headers is empty."

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v5, v14}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    move v5, v3

    :goto_4
    if-nez v5, :cond_f

    const-string v5, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v6

    invoke-static {v5, v10}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v3

    aput-object v2, v5, v6

    invoke-static {v11, v5}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v13, :cond_e

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    const-string v11, "[key]: %s, [value]: %s"

    new-array v13, v0, [Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v13, v6

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_8

    :cond_f
    :try_start_6
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    const-string v9, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v0

    invoke-static {v9, v14}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_10

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "status of server is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v6, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_10
    const-string v2, "[Upload] Received %d bytes"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    array-length v2, v10

    if-nez v2, :cond_12

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const-string v5, "[Upload] HTTP headers from server: key = %s, value = %s"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {v5, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    const-string v0, "response data from server is empty"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v6, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_12
    if-nez v10, :cond_13

    const-string v0, "failed to decrypt response from server"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v6, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_13
    invoke-static {v10, v0}, Lcom/uqm/crashsight/proguard/u;->b([BI)[B

    move-result-object v2

    if-eqz v2, :cond_14

    move-object v10, v2

    :cond_14
    invoke-static {v10}, Lcom/uqm/crashsight/proguard/g;->a([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v2

    if-nez v2, :cond_15

    const-string v0, "failed to decode response package"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v6, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_15
    const-string v4, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v7

    if-nez v7, :cond_16

    move v7, v3

    goto :goto_7

    :cond_16
    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v7

    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/uqm/crashsight/proguard/l;->f:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v5, v1, Lcom/uqm/crashsight/proguard/l;->g:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-direct {v1, v2, v4, v5}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/common/strategy/a;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "failed to process response package"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_17
    const-string v3, "successfully uploaded"

    invoke-direct {v1, v2, v6, v0, v3}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :catchall_1
    move v9, v5

    :catchall_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v3

    aput-object v5, v10, v6

    invoke-static {v11, v10}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_8
    move v11, v6

    move v10, v12

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_18
    const-string v0, "failed after many attempts"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v11, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_19
    :goto_9
    const-string v0, "illegal access error"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V

    return-void

    :cond_1a
    :goto_a
    const-string v0, "request package is empty!"

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v3, v0}, Lcom/uqm/crashsight/proguard/l;->a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;ZILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b
    return-void
.end method
