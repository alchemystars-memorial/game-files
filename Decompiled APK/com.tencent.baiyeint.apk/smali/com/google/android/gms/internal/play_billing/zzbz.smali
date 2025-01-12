.class public final Lcom/google/android/gms/internal/play_billing/zzbz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzca;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzbd;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb:Lcom/google/android/gms/internal/play_billing/zzbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:Lcom/google/android/gms/internal/play_billing/zzbd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;
    .locals 8

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zzb:Lcom/google/android/gms/internal/play_billing/zzbd;

    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzci;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzci;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;ZZ)V

    return-object v7
.end method
