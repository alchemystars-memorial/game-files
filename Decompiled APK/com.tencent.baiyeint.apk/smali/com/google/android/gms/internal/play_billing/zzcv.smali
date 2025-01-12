.class final Lcom/google/android/gms/internal/play_billing/zzcv;
.super Ljava/util/AbstractSet;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field final zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/play_billing/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcw;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zza:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzcw;->zzc(Lcom/google/android/gms/internal/play_billing/zzcw;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza()I

    move-result v3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcw;->zza()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcy;->zzb()Ljava/util/Comparator;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v3, p1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcu;-><init>(Lcom/google/android/gms/internal/play_billing/zzcv;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zza()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final zza()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzcw;->zzb(Lcom/google/android/gms/internal/play_billing/zzcw;)[I

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    return v0
.end method

.method final zzb()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zza:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcv;->zzb:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzcw;->zzb(Lcom/google/android/gms/internal/play_billing/zzcw;)[I

    move-result-object v0

    aget v0, v0, v1

    return v0
.end method
