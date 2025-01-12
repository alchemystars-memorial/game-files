.class public abstract Lcom/google/android/gms/internal/play_billing/zzl;
.super Lcom/google/android/gms/internal/play_billing/zzq;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzm;


# direct methods
.method public static zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzm;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzm;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzm;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
