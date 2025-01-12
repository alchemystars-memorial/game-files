.class public final Lcom/google/android/gms/internal/measurement/zzlm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzfo<",
        "Lcom/google/android/gms/internal/measurement/zzln;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzlm;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfo<",
            "Lcom/google/android/gms/internal/measurement/zzln;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzlm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlo;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zza(Lcom/google/android/gms/internal/measurement/zzfo;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzfo;

    return-void
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzln;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzln;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzln;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzln;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zzf()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzln;->zze()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzln;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zzb:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzln;

    return-object v0
.end method
