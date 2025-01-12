.class public final Lcom/google/android/gms/internal/play_billing/zzcy;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field private static final zza:Ljava/util/Comparator;

.field private static final zzb:Ljava/util/Comparator;

.field private static final zzc:Lcom/google/android/gms/internal/play_billing/zzcy;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzcw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcy;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcy;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcw;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcy;-><init>(Lcom/google/android/gms/internal/play_billing/zzcw;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzc:Lcom/google/android/gms/internal/play_billing/zzcy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzd:Lcom/google/android/gms/internal/play_billing/zzcw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzcy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzc:Lcom/google/android/gms/internal/play_billing/zzcy;

    return-object v0
.end method

.method static bridge synthetic zzb()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcy;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzcy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcy;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzcy;->zzd:Lcom/google/android/gms/internal/play_billing/zzcw;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzd:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzcw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzd:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcw;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcy;->zzd:Lcom/google/android/gms/internal/play_billing/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
