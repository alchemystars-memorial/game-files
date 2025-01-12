.class public final Lcom/google/android/gms/internal/play_billing/zzax;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzb:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzc:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzd:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zze:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzf:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzg:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzh:Lcom/google/android/gms/internal/play_billing/zzba;

.field public static final zzi:Lcom/google/android/gms/internal/play_billing/zzba;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Throwable;

    const-string v1, "cause"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zza:Lcom/google/android/gms/internal/play_billing/zzba;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "ratelimit_count"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "sampling_count"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzau;

    const-string v1, "ratelimit_period"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzd:Lcom/google/android/gms/internal/play_billing/zzba;

    const-class v0, Ljava/lang/Integer;

    const-string/jumbo v1, "skipped"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zze:Lcom/google/android/gms/internal/play_billing/zzba;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzav;

    const-class v1, Ljava/lang/Object;

    const-string v2, "group_by"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzf:Lcom/google/android/gms/internal/play_billing/zzba;

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "forced"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzg:Lcom/google/android/gms/internal/play_billing/zzba;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaw;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzcy;

    const-string/jumbo v2, "tags"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzaw;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzh:Lcom/google/android/gms/internal/play_billing/zzba;

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzbb;

    const-string/jumbo v1, "stack_size"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzba;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzax;->zzi:Lcom/google/android/gms/internal/play_billing/zzba;

    return-void
.end method
