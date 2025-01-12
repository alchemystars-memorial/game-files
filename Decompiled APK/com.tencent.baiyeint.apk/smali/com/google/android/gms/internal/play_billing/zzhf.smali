.class final Lcom/google/android/gms/internal/play_billing/zzhf;
.super Lcom/google/android/gms/internal/play_billing/zzhd;
.source "com.android.billingclient:billing@@6.1.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhd;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhe;->zza()I

    move-result p1

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzb()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzex;

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzc()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzf()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    :cond_0
    return-object v0
.end method

.method final synthetic zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzex;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    return-object p1
.end method

.method final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzc()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzhe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzc()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhe;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhe;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhe;->zze(Lcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zzhe;)Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhe;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzd(Lcom/google/android/gms/internal/play_billing/zzhe;)Lcom/google/android/gms/internal/play_billing/zzhe;

    :cond_1
    :goto_0
    return-object p1
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;IJ)V
    .locals 0

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzj(ILjava/lang/Object;)V

    return-void
.end method

.method final zzg(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzex;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzh()V

    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzex;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhe;

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzex;->zzc:Lcom/google/android/gms/internal/play_billing/zzhe;

    return-void
.end method

.method final synthetic zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhe;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhe;->zzk(Lcom/google/android/gms/internal/play_billing/zzhv;)V

    return-void
.end method
