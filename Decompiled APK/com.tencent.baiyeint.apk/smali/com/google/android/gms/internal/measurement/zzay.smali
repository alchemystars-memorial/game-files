.class final Lcom/google/android/gms/internal/measurement/zzay;
.super Lcom/google/android/gms/internal/measurement/zzbg;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzm;

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzbr;Lcom/google/android/gms/internal/measurement/zzm;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzay;->zza:Lcom/google/android/gms/internal/measurement/zzm;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzb:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Lcom/google/android/gms/internal/measurement/zzbr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbr;->zzR(Lcom/google/android/gms/internal/measurement/zzbr;)Lcom/google/android/gms/internal/measurement/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzay;->zza:Lcom/google/android/gms/internal/measurement/zzm;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzb:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzp;->getTestFlag(Lcom/google/android/gms/internal/measurement/zzs;I)V

    return-void
.end method

.method protected final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zza:Lcom/google/android/gms/internal/measurement/zzm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzm;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
