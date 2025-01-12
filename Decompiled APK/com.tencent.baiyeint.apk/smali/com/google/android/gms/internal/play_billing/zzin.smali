.class public final Lcom/google/android/gms/internal/play_billing/zzin;
.super Lcom/google/android/gms/internal/play_billing/zzet;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgd;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzw()Lcom/google/android/gms/internal/play_billing/zzio;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzet;-><init>(Lcom/google/android/gms/internal/play_billing/zzex;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzim;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzio;->zzw()Lcom/google/android/gms/internal/play_billing/zzio;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzet;-><init>(Lcom/google/android/gms/internal/play_billing/zzex;)V

    return-void
.end method


# virtual methods
.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzin;->zza:Lcom/google/android/gms/internal/play_billing/zzex;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzio;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzio;->zzy(Lcom/google/android/gms/internal/play_billing/zzio;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzin;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzin;->zza:Lcom/google/android/gms/internal/play_billing/zzex;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzio;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzio;->zzx(Lcom/google/android/gms/internal/play_billing/zzio;Ljava/lang/String;)V

    return-object p0
.end method
