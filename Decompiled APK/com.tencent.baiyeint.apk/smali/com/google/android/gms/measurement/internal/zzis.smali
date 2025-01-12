.class final Lcom/google/android/gms/measurement/internal/zzis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzs;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjm;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzeh;->zzaE:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zzi()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzh()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzk()Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzE(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfi;->zzj:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzl()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzad(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjm;->zzM(Lcom/google/android/gms/measurement/internal/zzjm;)Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzb()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzl(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zze;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzk()Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzE(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfi;->zzj:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zzb(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjm;->zzN(Lcom/google/android/gms/measurement/internal/zzjm;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzb()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzc:Lcom/google/android/gms/measurement/internal/zzjm;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfw;->zzl()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzis;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzad(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;)V

    throw v0
.end method
