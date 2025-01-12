.class public final Lcom/google/android/gms/internal/play_billing/zzdc;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdc;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzdc;->zzb:I

    return-void
.end method

.method public static zza()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdc;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/zzdc;->zzb:I

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdc;->zzb:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzdc;->zzb:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Mismatched calls to RecursionDepth (possible error in core library)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
