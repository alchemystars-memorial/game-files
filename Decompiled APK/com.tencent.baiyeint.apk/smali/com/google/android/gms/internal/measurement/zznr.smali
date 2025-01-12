.class public final Lcom/google/android/gms/internal/measurement/zznr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzfo<",
        "Lcom/google/android/gms/internal/measurement/zzns;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznr;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfo<",
            "Lcom/google/android/gms/internal/measurement/zzns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznt;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(Lcom/google/android/gms/internal/measurement/zzfo;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zzfo;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzc()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznr;->zzg()Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzns;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzns;

    return-object v0
.end method
