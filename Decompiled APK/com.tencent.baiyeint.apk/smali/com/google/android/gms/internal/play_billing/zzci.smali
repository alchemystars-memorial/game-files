.class final Lcom/google/android/gms/internal/play_billing/zzci;
.super Lcom/google/android/gms/internal/play_billing/zzby;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzbd;

.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzbq;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;ZZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    sget-object p1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzd()Ljava/util/Set;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzb()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p5

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzby;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zza:Lcom/google/android/gms/internal/play_billing/zzbd;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zzb:Ljava/util/logging/Level;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zzc:Ljava/util/Set;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/zzci;->zzd:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-void
.end method
