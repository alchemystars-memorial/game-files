.class public Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach_up_time_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3ec

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/uqm/crashsight/proguard/e;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/d;Z)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "[attach] save attach up time success, key=[%s]"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "[attach] save attach up time failed, key=[%s]"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b()V

    return-void
.end method

.method public final b()V
    .locals 6

    sget-boolean v0, Lcom/uqm/crashsight/proguard/p;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    iget-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    iget-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    iget-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    iget-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    iget-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[attach] CrashAttachUpTime\ntype=[%d]\nretCode=[%d]\nretMsg=[%s]\nattachSize=[%d]\nzipAttachSize=[%d]\nnetworkType=[%s]\nstartTime=[%d]ms\nendTime=[%d]ms\ntime=[%d]ms\ncopyTime=[%d]ms\nzipTime=[%d]ms\nuploadStartTime=[%d]ms\nuploadEndTime=[%d]ms\nuploadTime=[%d]ms\ndeleteTime=[%d]ms\nexpUid=[%s]\n"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
