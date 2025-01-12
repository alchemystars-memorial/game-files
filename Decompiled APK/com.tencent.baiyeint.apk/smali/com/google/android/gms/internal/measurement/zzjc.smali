.class final Lcom/google/android/gms/internal/measurement/zzjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzjj<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zziy;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjx<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhg<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zziy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzjx<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhg<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zziy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Lcom/google/android/gms/internal/measurement/zziy;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zziy;

    return-void
.end method

.method static zzf(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zziy;)Lcom/google/android/gms/internal/measurement/zzjc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzjx<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhg<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zziy;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzjc<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjc;-><init>(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zziy;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zziy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zziy;->zzbH()Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zzaD()Lcom/google/android/gms/internal/measurement/zziy;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhk;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjl;->zzF(Lcom/google/android/gms/internal/measurement/zzjx;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjl;->zzE(Lcom/google/android/gms/internal/measurement/zzhg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzge;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzht;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/zzht;->zzc:Lcom/google/android/gms/internal/measurement/zzjy;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/zzht;->zzc:Lcom/google/android/gms/internal/measurement/zzjy;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhq;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzhb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzhb;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzd:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 p1, 0x0

    throw p1
.end method
