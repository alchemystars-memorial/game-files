.class public final Lcom/google/android/gms/internal/play_billing/zziq;
.super Lcom/google/android/gms/internal/play_billing/zzet;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgd;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzis;->zzw()Lcom/google/android/gms/internal/play_billing/zzis;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzet;-><init>(Lcom/google/android/gms/internal/play_billing/zzex;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzip;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzis;->zzw()Lcom/google/android/gms/internal/play_billing/zzis;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzet;-><init>(Lcom/google/android/gms/internal/play_billing/zzex;)V

    return-void
.end method


# virtual methods
.method public final zzi(I)Lcom/google/android/gms/internal/play_billing/zziq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zziq;->zza:Lcom/google/android/gms/internal/play_billing/zzex;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzis;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzis;->zzx(Lcom/google/android/gms/internal/play_billing/zzis;I)V

    return-object p0
.end method
