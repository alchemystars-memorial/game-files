.class final Lcom/google/android/gms/internal/play_billing/zzfx;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzfw;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfw;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfw;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb()Lcom/google/android/gms/internal/play_billing/zzfw;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzd(Lcom/google/android/gms/internal/play_billing/zzfw;)V

    :cond_1
    return-object p0
.end method
