.class public final Lcom/google/android/gms/internal/play_billing/zzej;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzej;

.field public static final synthetic zzb:I = 0x0

.field private static volatile zzc:Z = false

.field private static volatile zzd:Lcom/google/android/gms/internal/play_billing/zzej;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzej;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzej;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzej;->zza:Lcom/google/android/gms/internal/play_billing/zzej;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzej;->zze:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzej;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzej;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzej;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzej;->zzd:Lcom/google/android/gms/internal/play_billing/zzej;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzej;->zzd:Lcom/google/android/gms/internal/play_billing/zzej;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzer;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzej;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzej;->zzd:Lcom/google/android/gms/internal/play_billing/zzej;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzgc;I)Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzei;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzei;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzej;->zze:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzev;

    return-object p1
.end method
