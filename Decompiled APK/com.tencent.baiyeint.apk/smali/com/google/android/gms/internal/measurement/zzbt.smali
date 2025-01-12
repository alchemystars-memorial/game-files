.class public final Lcom/google/android/gms/internal/measurement/zzbt;
.super Lcom/google/android/gms/internal/measurement/zzhp;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhp<",
        "Lcom/google/android/gms/internal/measurement/zzbu;",
        "Lcom/google/android/gms/internal/measurement/zzbt;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu;->zzi()Lcom/google/android/gms/internal/measurement/zzbu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbu;->zzi()Lcom/google/android/gms/internal/measurement/zzbu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu;->zzd()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzcf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu;->zze(I)Lcom/google/android/gms/internal/measurement/zzcf;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(ILcom/google/android/gms/internal/measurement/zzce;)Lcom/google/android/gms/internal/measurement/zzbt;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaA()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu;->zzj(Lcom/google/android/gms/internal/measurement/zzbu;ILcom/google/android/gms/internal/measurement/zzcf;)V

    return-object p0
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbu;->zzg()I

    move-result v0

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzbw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbu;->zzh(I)Lcom/google/android/gms/internal/measurement/zzbw;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(ILcom/google/android/gms/internal/measurement/zzbv;)Lcom/google/android/gms/internal/measurement/zzbt;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaA()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbu;->zzk(Lcom/google/android/gms/internal/measurement/zzbu;ILcom/google/android/gms/internal/measurement/zzbw;)V

    return-object p0
.end method
