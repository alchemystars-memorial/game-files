.class final Lcom/google/android/gms/internal/measurement/zzjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzjg;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzjk;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzjj<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Lcom/google/android/gms/internal/measurement/zzjg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zziq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:Lcom/google/android/gms/internal/measurement/zzjk;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjg;->zza:Lcom/google/android/gms/internal/measurement/zzjg;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzjj<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzb:Lcom/google/android/gms/internal/measurement/zzjk;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
