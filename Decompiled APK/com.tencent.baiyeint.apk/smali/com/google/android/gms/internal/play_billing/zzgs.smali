.class final Lcom/google/android/gms/internal/play_billing/zzgs;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field private static final zza:Ljava/util/Iterator;

.field private static final zzb:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:Ljava/util/Iterator;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb:Ljava/lang/Iterable;

    return-void
.end method

.method static zza()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb:Ljava/lang/Iterable;

    return-object v0
.end method

.method static bridge synthetic zzb()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:Ljava/util/Iterator;

    return-object v0
.end method
