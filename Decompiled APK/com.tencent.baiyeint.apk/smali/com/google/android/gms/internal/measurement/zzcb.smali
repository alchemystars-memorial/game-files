.class final Lcom/google/android/gms/internal/measurement/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhx;


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzhx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcb;->zza:Lcom/google/android/gms/internal/measurement/zzhx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzcc;->zza(I)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
