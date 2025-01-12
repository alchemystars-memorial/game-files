.class final Lcom/google/android/gms/internal/play_billing/zzan;
.super Lcom/google/android/gms/internal/play_billing/zzaj;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/play_billing/zzai;

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzai;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zza:Lcom/google/android/gms/internal/play_billing/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:I

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/play_billing/zzan;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:I

    return p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/play_billing/zzan;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zzb:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zza:Lcom/google/android/gms/internal/play_billing/zzai;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzai;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzac;->zzd()Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzat;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzan;->zzc:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzac;->zzd()Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzac;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzas;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzac;->zzd()Lcom/google/android/gms/internal/play_billing/zzaf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzat;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final zzh()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzam;-><init>(Lcom/google/android/gms/internal/play_billing/zzan;)V

    return-object v0
.end method
