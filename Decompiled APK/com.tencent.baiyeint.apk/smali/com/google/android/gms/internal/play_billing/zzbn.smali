.class final Lcom/google/android/gms/internal/play_billing/zzbn;
.super Lcom/google/android/gms/internal/play_billing/zzbq;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/gms/internal/play_billing/zzbp;

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzbo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbl;Lcom/google/android/gms/internal/play_billing/zzbm;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbq;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzf(Lcom/google/android/gms/internal/play_billing/zzbl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zze(Lcom/google/android/gms/internal/play_billing/zzbl;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:Lcom/google/android/gms/internal/play_billing/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzb(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    return-void
.end method
