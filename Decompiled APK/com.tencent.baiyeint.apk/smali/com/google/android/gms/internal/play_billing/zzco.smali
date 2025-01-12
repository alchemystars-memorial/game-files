.class final Lcom/google/android/gms/internal/play_billing/zzco;
.super Lcom/google/android/gms/internal/play_billing/zzcl;
.source "com.android.billingclient:billing@@6.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzcl;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzcp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzco;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzco;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzco;->zza:Lcom/google/android/gms/internal/play_billing/zzcl;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzcn;-><init>(Lcom/google/android/gms/internal/play_billing/zzcm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzco;->zzb:Lcom/google/android/gms/internal/play_billing/zzcp;

    return-void
.end method

.method static final zzb()Lcom/google/android/gms/internal/play_billing/zzcl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzco;->zza:Lcom/google/android/gms/internal/play_billing/zzcl;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
