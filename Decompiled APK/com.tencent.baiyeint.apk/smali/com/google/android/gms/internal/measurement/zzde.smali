.class public final Lcom/google/android/gms/internal/measurement/zzde;
.super Lcom/google/android/gms/internal/measurement/zzhp;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhp<",
        "Lcom/google/android/gms/internal/measurement/zzdf;",
        "Lcom/google/android/gms/internal/measurement/zzde;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdf;->zzo()Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzcs;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdf;->zzo()Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzdf;->zzp(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzdf;->zzq(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzr(Lcom/google/android/gms/internal/measurement/zzdf;)V

    return-object p0
.end method

.method public final zzd(J)Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdf;->zzs(Lcom/google/android/gms/internal/measurement/zzdf;J)V

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzt(Lcom/google/android/gms/internal/measurement/zzdf;)V

    return-object p0
.end method

.method public final zzf(D)Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdf;->zzu(Lcom/google/android/gms/internal/measurement/zzdf;D)V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzv(Lcom/google/android/gms/internal/measurement/zzdf;)V

    return-object p0
.end method

.method public final zzh()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzm()I

    move-result v0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/measurement/zzde;)Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhp;->zzaA()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzdf;->zzw(Lcom/google/android/gms/internal/measurement/zzdf;Lcom/google/android/gms/internal/measurement/zzdf;)V

    return-object p0
.end method

.method public final zzj(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzdf;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzde;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzdf;->zzx(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzk()Lcom/google/android/gms/internal/measurement/zzde;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzax()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzde;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdf;->zzy(Lcom/google/android/gms/internal/measurement/zzdf;)V

    return-object p0
.end method
