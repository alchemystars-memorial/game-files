.class final Lcom/google/android/gms/measurement/internal/zzix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjm;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzc:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjm;->zzM(Lcom/google/android/gms/measurement/internal/zzjm;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzb()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzl()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzc:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzag(Lcom/google/android/gms/internal/measurement/zzs;[B)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zza:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzb:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzj(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzjm;->zzN(Lcom/google/android/gms/measurement/internal/zzjm;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzb()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzd:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzl()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzix;->zzc:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzag(Lcom/google/android/gms/internal/measurement/zzs;[B)V

    throw v1
.end method
