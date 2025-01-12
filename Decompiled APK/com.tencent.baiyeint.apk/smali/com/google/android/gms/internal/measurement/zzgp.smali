.class final Lcom/google/android/gms/internal/measurement/zzgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzha;

.field private final zzb:[B


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzgi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zzb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzha;->zzt([B)Lcom/google/android/gms/internal/measurement/zzha;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzha;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzgt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzha;->zzE()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgr;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzha;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzha;

    return-object v0
.end method
