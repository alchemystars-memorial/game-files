.class public final Lcom/google/android/gms/internal/play_billing/zzch;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzca;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzbd;

.field private final zzc:Ljava/util/logging/Level;

.field private final zzd:Ljava/util/Set;

.field private final zze:Lcom/google/android/gms/internal/play_billing/zzbq;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbe;->zza:Lcom/google/android/gms/internal/play_billing/zzbe;

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcg;)V
    .locals 8

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzbe;->zzb:Lcom/google/android/gms/internal/play_billing/zzbe;

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzd()Ljava/util/Set;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzck;->zzb()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object v7

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/play_billing/zzch;-><init>(Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/play_billing/zzbq;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/play_billing/zzbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/zzbd;

    iput-object p4, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzc:Ljava/util/logging/Level;

    iput-object p6, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzd:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zze:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzbf;
    .locals 10

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/zzbd;

    iget-object v5, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzc:Ljava/util/logging/Level;

    iget-object v6, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzd:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zze:Lcom/google/android/gms/internal/play_billing/zzbq;

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzck;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zza:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/play_billing/zzck;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/play_billing/zzbq;Lcom/google/android/gms/internal/play_billing/zzcj;)V

    return-object v9
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/play_billing/zzch;
    .locals 8

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzch;

    iget-object v6, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzd:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zze:Lcom/google/android/gms/internal/play_billing/zzbq;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/zzbd;

    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzch;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/play_billing/zzch;-><init>(Ljava/lang/String;ZLcom/google/android/gms/internal/play_billing/zzbd;Ljava/util/logging/Level;ZLjava/util/Set;Lcom/google/android/gms/internal/play_billing/zzbq;)V

    return-object p1
.end method
