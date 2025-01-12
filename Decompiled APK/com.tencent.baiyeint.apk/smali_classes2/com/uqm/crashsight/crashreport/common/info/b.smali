.class public final Lcom/uqm/crashsight/crashreport/common/info/b;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static x:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

.field public w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    sget v2, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iget-object v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[attach] upRecord.csZipFilePath is empty"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c()V

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    if-eq v3, v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "[attach] nextOperation[%d] !zipFile.exists() || !zipFile.canRead()"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->c()V

    return-void

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/c;->h()Lcom/uqm/crashsight/proguard/q;

    move-result-object v1

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[attach] CrashAttachBean failed: token is null"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/q;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[attach] CrashAttachBean failed: token invalid"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "[attach] init attach bean with up record"

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->d()V

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v2, v1, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    iget-wide v2, v1, Lcom/uqm/crashsight/proguard/q;->g:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v1, v1, Lcom/uqm/crashsight/proguard/q;->h:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->h:J

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->i:J

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[attach] cachedFilename is empty"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->h()Lcom/uqm/crashsight/proguard/q;

    move-result-object v3

    if-nez v3, :cond_1

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[attach] CrashAttachBean failed: token is null"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/q;->b()Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[attach] CrashAttachBean failed: token invalid"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[attach] CrashAttachBean failed: cachedFilename is empty"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[attach] upload cached attach file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget v4, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput v1, v4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iget-object v1, v3, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iget-object v1, v3, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iget-object v1, v3, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iget-object v1, v3, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object v1, v3, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v1, v3, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    iget-wide v4, v3, Lcom/uqm/crashsight/proguard/q;->g:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v3, v3, Lcom/uqm/crashsight/proguard/q;->h:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    :cond_4
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[attach]cachedFilename invalid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_5
    const/4 p1, 0x2

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-static {p1, v3}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/4 p1, 0x3

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    const/4 p1, 0x4

    aget-object v3, v1, p1

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iput-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    return-void

    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[attach]cached path not exists,or can not read:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    :try_start_0
    sget v2, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/uqm/crashsight/crashreport/common/info/b;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->m:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iput-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/c;->h()Lcom/uqm/crashsight/proguard/q;

    move-result-object p2

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    const-string p1, "[attach] CrashAttachBean failed: token is null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/q;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    const-string p1, "[attach] CrashAttachBean failed: token invalid"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    const-string p1, "[attach] CrashAttachBean failed: recordUid is empty"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p1, p2, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iget-object p1, p2, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iget-object p1, p2, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iget-object p1, p2, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object p1, p2, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object p1, p2, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    iget-wide v2, p2, Lcom/uqm/crashsight/proguard/q;->g:J

    iput-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide p1, p2, Lcom/uqm/crashsight/proguard/q;->h:J

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".zip"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "https://"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    const-string v3, ""

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    invoke-direct {v2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;-><init>()V

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    :try_start_0
    sget v2, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/uqm/crashsight/crashreport/common/info/b;->x:I

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->a:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x8

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    const-string p2, "-"

    invoke-virtual {p3, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x20

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->m:Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/uqm/crashsight/crashreport/common/info/b;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->b:I

    iput p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->l:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->m:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->k:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->a:I

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-wide v2, p4, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iput-wide v2, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->b:J

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->f:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->w:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object p4, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    iput-object p4, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;->g:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/c;->h()Lcom/uqm/crashsight/proguard/q;

    move-result-object p2

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    const-string p1, "[attach] CrashAttachBean failed: token is null"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/q;->b()Z

    move-result p4

    if-nez p4, :cond_1

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    const-string p1, "[attach] CrashAttachBean failed: token invalid"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {p3}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    const-string p1, "[attach] CrashAttachBean failed: recordUid is empty"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p3, p2, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->c:Ljava/lang/String;

    iget-object p3, p2, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->d:Ljava/lang/String;

    iget-object p3, p2, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    iget-object p3, p2, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-object p3, p2, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object p3, p2, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    iget-wide p3, p2, Lcom/uqm/crashsight/proguard/q;->g:J

    iput-wide p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide p2, p2, Lcom/uqm/crashsight/proguard/q;->h:J

    iput-wide p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    const/16 p4, 0x10

    invoke-virtual {p3, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "https://"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->u:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "[attach] attachment file extension:[%s]"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->n:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    return-void
.end method
