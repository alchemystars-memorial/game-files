.class final Lcom/google/android/gms/internal/measurement/zzaj;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.1"


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zza:J

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbg;-><init>(Lcom/google/android/gms/internal/measurement/zzbr;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zzb:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzaj;->zza:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->setSessionTimeoutDuration(J)V

    return-void
.end method
