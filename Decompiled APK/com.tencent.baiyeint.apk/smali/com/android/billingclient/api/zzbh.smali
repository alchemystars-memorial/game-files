.class public final synthetic Lcom/android/billingclient/api/zzbh;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# direct methods
.method public static zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzhy;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzv()Lcom/google/android/gms/internal/play_billing/zzhx;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzii;->zzv()Lcom/google/android/gms/internal/play_billing/zzie;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzie;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzi(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzhx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to create logging payload"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/play_billing/zzic;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzic;->zzv()Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzj(I)Lcom/google/android/gms/internal/play_billing/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "BillingLogger"

    const-string v1, "Unable to create logging payload"

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
