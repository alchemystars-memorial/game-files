.class final synthetic Lcom/google/android/gms/measurement/internal/zzha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzhy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzha;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzha;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zzg()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfi;->zzr:Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfi;->zzs:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzff;->zza()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfi;->zzs:Lcom/google/android/gms/measurement/internal/zzff;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(J)V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zze()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    const-string v2, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfi;->zzr:Lcom/google/android/gms/measurement/internal/zzfd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb(Z)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhy;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzM()V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V

    return-void
.end method
