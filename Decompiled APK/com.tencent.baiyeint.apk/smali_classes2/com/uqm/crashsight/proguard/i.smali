.class public final Lcom/uqm/crashsight/proguard/i;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Lcom/uqm/crashsight/crashreport/common/info/b;

.field private final f:Lcom/uqm/crashsight/proguard/h;

.field private final g:Lcom/uqm/crashsight/proguard/j;

.field private h:I

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;ZZ)V
    .locals 9

    const/4 v7, 0x2

    const/16 v8, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/uqm/crashsight/proguard/i;-><init>(Landroid/content/Context;ILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/uqm/crashsight/crashreport/common/info/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/j;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x2

    iput p4, p0, Lcom/uqm/crashsight/proguard/i;->a:I

    const/16 p5, 0x2710

    iput p5, p0, Lcom/uqm/crashsight/proguard/i;->b:I

    const/4 p7, 0x0

    iput p7, p0, Lcom/uqm/crashsight/proguard/i;->h:I

    const-wide/16 p7, 0x0

    iput-wide p7, p0, Lcom/uqm/crashsight/proguard/i;->i:J

    iput-wide p7, p0, Lcom/uqm/crashsight/proguard/i;->j:J

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p3, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/h;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/h;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/i;->f:Lcom/uqm/crashsight/proguard/h;

    invoke-static {}, Lcom/uqm/crashsight/proguard/k;->a()Lcom/uqm/crashsight/proguard/k;

    iput-object p6, p0, Lcom/uqm/crashsight/proguard/i;->g:Lcom/uqm/crashsight/proguard/j;

    iput p2, p0, Lcom/uqm/crashsight/proguard/i;->d:I

    iput p4, p0, Lcom/uqm/crashsight/proguard/i;->a:I

    iput p5, p0, Lcom/uqm/crashsight/proguard/i;->b:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->a:I

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "[Upload] Failed to upload last time, wait and try(%d) again."

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/u;->b(J)V

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v4, v3, v0

    iget v4, p0, Lcom/uqm/crashsight/proguard/i;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "[UploadId] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/i;->f:Lcom/uqm/crashsight/proguard/h;

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v1, p0, v3}, Lcom/uqm/crashsight/proguard/h;->a(Lcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->a:I

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "[Upload] Failed to upload last time, wait and try(%d) again."

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/u;->b(J)V

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v4, v3, v0

    iget v4, p0, Lcom/uqm/crashsight/proguard/i;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "[UploadPart] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->f:Lcom/uqm/crashsight/proguard/h;

    iget-object v6, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/uqm/crashsight/proguard/h;->a(Lcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[attach] saveUploadEnd ..."

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    const/4 p1, 0x1

    const-string v1, "cosUpload"

    if-eqz p2, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string p3, "[attach][Upload] Success: %s"

    invoke-static {p3, p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    aput-object v1, v2, p1

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[attach][Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/i;->g:Lcom/uqm/crashsight/proguard/j;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/proguard/j;->a(Z)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;[B)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->a:I

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "[Upload][completeUploadPart] Failed to upload last time, wait and try(%d) again."

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/u;->b(J)V

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v4, v3, v0

    iget v4, p0, Lcom/uqm/crashsight/proguard/i;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "[CompleteUpload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/i;->f:Lcom/uqm/crashsight/proguard/h;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v3, p0, v4, p1, p2}, Lcom/uqm/crashsight/proguard/h;->a(Lcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a([B)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->a:I

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "[attach][uploadOnce] Failed to upload last time, wait and try(%d) again."

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v3, p0, Lcom/uqm/crashsight/proguard/i;->b:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/u;->b(J)V

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v4, v3, v0

    iget v4, p0, Lcom/uqm/crashsight/proguard/i;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "[UploadOnce] Upload to %s with cmd %d (pid=%d | tid=%d)."

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/i;->f:Lcom/uqm/crashsight/proguard/h;

    iget-object v4, p0, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v3, p1, p0, v4}, Lcom/uqm/crashsight/proguard/h;->a([BLcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/proguard/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/proguard/i;->h:I

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/i;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/i;->i:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/i;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/i;->j:J

    return-void
.end method

.method public final run()V
    .locals 25

    move-object/from16 v1, p0

    const/16 v2, 0xb

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v6, Lcom/uqm/crashsight/proguard/p;->b:Z

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0x9

    const/4 v12, 0x3

    const/16 v13, 0xa

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v3, 0x2

    if-eqz v6, :cond_1

    const-string v6, "[attach] CosTokenBean\nid:[%d]\ntype:[%d]\nbucket:[%s]\nregion:[%s]\ndomain:[%s]\ntmpSecretId:[%s]\ntmpSecretKey:[%s]\nsessionToken:[%s]\nappId:[%s]\nappVersion:[%s]\ncsCachedAttachmentPath:[%s]\nexpUid:[%s]\nuriPath:[%s]\ncustomerKey:[%s]\ncustomerKeyMd5:[%s]\nexpUid:[%s]\n"

    const/16 v7, 0x10

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    aput-object v8, v7, v3

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    aput-object v8, v7, v12

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    aput-object v8, v7, v15

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    aput-object v8, v7, v14

    const/4 v8, 0x6

    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    aput-object v14, v7, v8

    const/4 v8, 0x7

    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    aput-object v14, v7, v8

    const/16 v8, 0x8

    iget-object v14, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    aput-object v14, v7, v8

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    aput-object v8, v7, v11

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    aput-object v8, v7, v13

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    aput-object v8, v7, v2

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    aput-object v8, v7, v10

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    const/16 v14, 0xe

    aput-object v8, v7, v14

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/16 v8, 0xf

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    iput v5, v1, Lcom/uqm/crashsight/proguard/i;->h:I

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/uqm/crashsight/proguard/i;->i:J

    iput-wide v6, v1, Lcom/uqm/crashsight/proguard/i;->j:J

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v6, v6, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput-object v0, v6, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v3, "[attach] saveRetCode ..."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v11, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    const-string v0, "[attach] network is not available"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v5, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/c;->f()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "[attach] saveCodeMsg ..."

    const-string v8, "WIFI"

    if-ne v6, v4, :cond_3

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v6, "[attach] cloudControlNetWorkType is 1, but not using WIFI"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v13, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_3
    if-ne v6, v3, :cond_4

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v6, "[attach] cloudControlNetWorkType is 2, but using WIFI"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v13, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_1
    if-nez v0, :cond_5

    const-string v0, "network mismatch"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v5, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v6, "[attach] saveUploadStart ..."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    if-ne v6, v4, :cond_7

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v8, v8, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v11, "[attach] saveZipStartError ..."

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v11, v13}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v3, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    invoke-virtual {v8}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    iget-object v8, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v6, v7, v8}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Ljava/io/File;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_6

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v5, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_6
    iget-object v6, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v6, v6, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v7, "[attach] saveZipEnd ..."

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, v6, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a()V

    :cond_7
    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, ""

    if-ne v6, v3, :cond_a

    :try_start_2
    new-instance v6, Ljava/io/File;

    iget-object v8, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v17, 0x0

    iget-wide v8, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    iget-object v11, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v11, v11, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    move-object/from16 v16, v6

    move-wide/from16 v19, v8

    move-object/from16 v21, v11

    invoke-static/range {v16 .. v21}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)[B

    move-result-object v6

    if-nez v6, :cond_8

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v5, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_8
    invoke-direct {v1, v6}, Lcom/uqm/crashsight/proguard/i;->a([B)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v3, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v0, v3}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a(Lcom/uqm/crashsight/crashreport/common/info/b;)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v4, v4, v7}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v10, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v5, v3, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "[attach] saveUploadEnd ..."

    if-ne v6, v12, :cond_c

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/proguard/i;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v4, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_b
    iget-object v6, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v6, v6, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-virtual {v6}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    iput v15, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b()V

    :cond_c
    iget v6, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    if-ne v6, v15, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->e:J

    iget v11, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/uqm/crashsight/crashreport/common/info/c;->g()I

    move-result v12

    int-to-long v12, v12

    :goto_2
    iget-wide v14, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    cmp-long v14, v9, v14

    if-gez v14, :cond_12

    new-instance v14, Ljava/io/File;

    iget-object v15, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v15, v15, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    move-object/from16 v16, v14

    move-wide/from16 v17, v9

    move-wide/from16 v19, v12

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)[B

    move-result-object v14

    if-nez v14, :cond_d

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v5, v4, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_d
    iget-object v15, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v15, v2, v14}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v15, 0xe

    iput v15, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v4, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_e
    iget-object v15, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v15, v15, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v8, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v15, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-virtual {v15}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    const-string v3, "<Part>\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<PartNumber>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</PartNumber>\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<ETag>"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</ETag>\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Part>\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v14

    int-to-long v2, v2

    add-long/2addr v9, v2

    const-string v2, "[attach] readLen=[%d] zipAttachSize=[%d]"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v5

    iget-wide v14, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v4, v14

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-wide v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    cmp-long v2, v9, v2

    if-nez v2, :cond_f

    const-string v2, "</CompleteMultipartUpload>"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b()V

    goto :goto_4

    :cond_f
    add-int/lit8 v11, v11, 0x1

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    iput v11, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d:I

    iput-wide v9, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->e:J

    iput-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v19

    if-eqz v19, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attach_up_record_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x3ec

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/os/Parcelable;)[B

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v21, v2

    invoke-virtual/range {v19 .. v24}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/d;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "[attach] save attach up record success, key=[%s]"

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v2, v14, v5

    invoke-static {v3, v14}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    const-string v3, "[attach] save attach up record  failed, key=[%s]"

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v2, v14, v5

    invoke-static {v3, v14}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d()V

    :cond_11
    const/16 v2, 0xb

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_12
    :goto_4
    iget v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_14

    iget-object v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a(Lcom/uqm/crashsight/crashreport/common/info/b;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0, v7}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v2, 0xf

    iput v2, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_14
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    iget-object v2, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/16 v3, 0xb

    iput v3, v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iget-object v0, v1, Lcom/uqm/crashsight/proguard/i;->e:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v5, v3, v0}, Lcom/uqm/crashsight/proguard/i;->a(Ljava/lang/Object;ZILjava/lang/String;)V

    :goto_6
    return-void
.end method
