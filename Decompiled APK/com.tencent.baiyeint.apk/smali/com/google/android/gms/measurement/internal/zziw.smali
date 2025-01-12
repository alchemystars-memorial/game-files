.class final Lcom/google/android/gms/measurement/internal/zziw;
.super Lcom/google/android/gms/measurement/internal/zzal;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjm;Lcom/google/android/gms/measurement/internal/zzgr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzgr;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Lcom/google/android/gms/measurement/internal/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjm;->zzh()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    const-string v2, "Inactivity, disconnecting from the service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjm;->zzF()V

    return-void
.end method
