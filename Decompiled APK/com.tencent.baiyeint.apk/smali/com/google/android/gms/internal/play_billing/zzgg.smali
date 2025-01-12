.class final Lcom/google/android/gms/internal/play_billing/zzgg;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzgc;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzek;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzek;->zzc(Lcom/google/android/gms/internal/play_billing/zzgc;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)Lcom/google/android/gms/internal/play_billing/zzgg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgg;-><init>(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzex;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzi()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgc;->zzk()Lcom/google/android/gms/internal/play_billing/zzgb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgb;->zze()Lcom/google/android/gms/internal/play_billing/zzgc;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzp(Lcom/google/android/gms/internal/play_billing/zzhd;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzdj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzex;

    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzc()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzf()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzeu;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzb:Lcom/google/android/gms/internal/play_billing/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzhd;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgg;->zzd:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeo;

    const/4 p1, 0x0

    throw p1
.end method
