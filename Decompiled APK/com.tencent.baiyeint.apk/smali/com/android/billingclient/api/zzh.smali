.class final Lcom/android/billingclient/api/zzh;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/android/billingclient/api/zzg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/AlternativeBillingListener;Lcom/android/billingclient/api/zzbi;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/zzg;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/zzg;-><init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/AlternativeBillingListener;Lcom/android/billingclient/api/zzbi;Lcom/android/billingclient/api/zzf;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzbi;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/zzg;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/zzg;-><init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/zzbi;Lcom/android/billingclient/api/zzf;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzbq;Lcom/android/billingclient/api/zzbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/zzg;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p3, p2}, Lcom/android/billingclient/api/zzg;-><init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/zzbq;Lcom/android/billingclient/api/zzbi;Lcom/android/billingclient/api/zzf;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/zzh;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    return-object p0
.end method


# virtual methods
.method final zzc()Lcom/android/billingclient/api/zzbq;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    invoke-static {v0}, Lcom/android/billingclient/api/zzg;->zza(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/zzbq;

    const/4 v0, 0x0

    return-object v0
.end method

.method final zzd()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    invoke-static {v0}, Lcom/android/billingclient/api/zzg;->zzb(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method final zze()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    iget-object v1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzg;->zzd(Landroid/content/Context;)V

    return-void
.end method

.method final zzf(Z)V
    .locals 3

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const-string v0, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzh;->zzb:Lcom/android/billingclient/api/zzg;

    iget-object v1, p0, Lcom/android/billingclient/api/zzh;->zza:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/billingclient/api/zzg;->zzc(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    return-void
.end method
