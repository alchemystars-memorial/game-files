.class final Lcom/google/android/gms/internal/play_billing/zzfo;
.super Lcom/google/android/gms/internal/play_billing/zzfq;
.source "com.android.billingclient:billing@@6.1.0"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfq;-><init>(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfn;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfq;-><init>(Lcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzb()V

    return-void
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfc;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfc;->size()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzc()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzfc;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzfc;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzfc;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/play_billing/zzhn;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
