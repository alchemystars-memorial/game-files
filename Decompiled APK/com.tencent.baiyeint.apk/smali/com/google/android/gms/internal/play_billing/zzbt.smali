.class public final Lcom/google/android/gms/internal/play_billing/zzbt;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbp;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zza:Lcom/google/android/gms/internal/play_billing/zzbp;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zzb:Lcom/google/android/gms/internal/play_billing/zzbo;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/play_billing/zzbl;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zza:Lcom/google/android/gms/internal/play_billing/zzbp;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzbl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/zzbl;-><init>(Lcom/google/android/gms/internal/play_billing/zzbp;Lcom/google/android/gms/internal/play_billing/zzbk;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbt;->zzb:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zza(Lcom/google/android/gms/internal/play_billing/zzbo;)Lcom/google/android/gms/internal/play_billing/zzbl;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzba;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzg(Lcom/google/android/gms/internal/play_billing/zzba;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
