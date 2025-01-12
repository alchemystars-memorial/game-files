.class final Lcom/google/android/gms/internal/auth/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzfk;

    check-cast p1, Lcom/google/android/gms/internal/auth/zzfk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzfk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfk;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfk;->zzb()Lcom/google/android/gms/internal/auth/zzfk;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzfk;->zzd(Lcom/google/android/gms/internal/auth/zzfk;)V

    :cond_1
    return-object p0
.end method
