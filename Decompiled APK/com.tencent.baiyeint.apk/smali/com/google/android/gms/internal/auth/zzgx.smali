.class final Lcom/google/android/gms/internal/auth/zzgx;
.super Lcom/google/android/gms/internal/auth/zzgy;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgy;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgy;->zzj(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb(Ljava/lang/Object;J)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgy;->zzi(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;JZ)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzgz;->zza:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzgz;->zzi(Ljava/lang/Object;JZ)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzgz;->zzj(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzgy;->zzn(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;JF)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzgy;->zzm(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;J)Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzgz;->zza:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgz;->zzq(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgz;->zzr(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
