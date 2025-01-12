.class final Lcom/google/android/gms/internal/play_billing/zzcr;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcs;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzcs;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcs;->zza(Lcom/google/android/gms/internal/play_billing/zzcs;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzcs;->zza(Lcom/google/android/gms/internal/play_billing/zzcs;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
