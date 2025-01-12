.class final Lcom/google/android/gms/internal/play_billing/zzce;
.super Lcom/google/android/gms/internal/play_billing/zzby;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field private volatile zzd:Lcom/google/android/gms/internal/play_billing/zzbf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzce;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzce;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzce;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzby;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "ranchu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v0

    :cond_5
    :goto_4
    if-nez p1, :cond_8

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzc()Lcom/google/android/gms/internal/play_billing/zzch;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzch;->zzb(Z)Lcom/google/android/gms/internal/play_billing/zzch;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzby;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzch;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzd:Lcom/google/android/gms/internal/play_billing/zzbf;

    return-void

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzd:Lcom/google/android/gms/internal/play_billing/zzbf;

    return-void

    :cond_8
    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzbz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzbz;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzby;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzbz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzd:Lcom/google/android/gms/internal/play_billing/zzbf;

    return-void
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzce;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzca;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzce;

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzce;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzce;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzce;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzca;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzby;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzca;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzd:Lcom/google/android/gms/internal/play_billing/zzbf;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzcd;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzce;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return-object v1
.end method
