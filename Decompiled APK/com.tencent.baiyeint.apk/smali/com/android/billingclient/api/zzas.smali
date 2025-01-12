.class final Lcom/android/billingclient/api/zzas;
.super Lcom/google/android/gms/internal/play_billing/zze;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field final zzb:Landroid/os/ResultReceiver;

.field final zzc:Lcom/android/billingclient/api/zzbi;


# direct methods
.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbi;Lcom/android/billingclient/api/zzar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zze;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzas;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    iput-object p3, p0, Lcom/android/billingclient/api/zzas;->zzc:Lcom/android/billingclient/api/zzbi;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    const/16 v1, 0x4b

    const-string v2, "BillingClient"

    if-nez v0, :cond_0

    const-string p1, "Unable to send result for alternative billing only dialog"

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzas;->zzc:Lcom/android/billingclient/api/zzbi;

    const/16 v0, 0x10

    sget-object v2, Lcom/android/billingclient/api/zzbk;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v1, v0, v2}, Lcom/android/billingclient/api/zzbh;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzbi;->zza(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x6

    if-nez p1, :cond_1

    invoke-virtual {v0, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzas;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string p1, "The activity from which to launch alternative billing only dialog is null"

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v3, "RESPONSE_CODE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "Response bundle doesn\'t contain a response code"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v4, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch intent for alternative billing only dialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v5, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_4
    const-string v5, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    const/4 v7, 0x0

    if-nez v6, :cond_5

    const-string v0, "User has acknowledged the alternative billing only dialog before."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v7, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_5
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-class v8, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {p1, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "alternative_billing_only_dialog_result_receiver"

    iget-object v9, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Runtime error while launching intent for alternative billing only dialog."

    invoke-static {v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DEBUG_MESSAGE"

    const-string v3, "An internal error occurred."

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INTERNAL_LOG_ERROR_REASON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzy;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzas;->zzb:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
