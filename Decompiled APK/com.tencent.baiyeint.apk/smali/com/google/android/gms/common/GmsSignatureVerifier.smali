.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/common/zzz;

.field private static final zzb:Lcom/google/android/gms/common/zzz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzx;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    const-wide/32 v1, 0xc2bd840

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/zzx;->zza(J)Lcom/google/android/gms/common/zzx;

    sget-object v1, Lcom/google/android/gms/common/zzm;->zzd:Lcom/google/android/gms/common/zzk;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/zzm;->zzb:Lcom/google/android/gms/common/zzk;

    invoke-virtual {v2}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    sget-object v1, Lcom/google/android/gms/common/zzm;->zzc:Lcom/google/android/gms/common/zzk;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/zzm;->zza:Lcom/google/android/gms/common/zzk;

    invoke-virtual {v2}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->zze()Lcom/google/android/gms/common/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/zzz;

    new-instance v0, Lcom/google/android/gms/common/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzx;-><init>()V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzx;

    const-wide/32 v1, 0x4e6e200

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/zzx;->zza(J)Lcom/google/android/gms/common/zzx;

    sget-object v1, Lcom/google/android/gms/common/zzm;->zzd:Lcom/google/android/gms/common/zzk;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    sget-object v1, Lcom/google/android/gms/common/zzm;->zzc:Lcom/google/android/gms/common/zzk;

    invoke-virtual {v1}, Lcom/google/android/gms/common/zzk;->zzf()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzx;->zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzx;->zze()Lcom/google/android/gms/common/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzz;

    return-void
.end method
