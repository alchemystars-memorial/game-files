.class public final Lcom/android/billingclient/api/BillingConfig;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lorg/json/JSONObject;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingConfig;->zza:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingConfig;->zzb:Lorg/json/JSONObject;

    const-string p1, "countryCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingConfig;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingConfig;->zzc:Ljava/lang/String;

    return-object v0
.end method
