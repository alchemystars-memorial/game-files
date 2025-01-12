.class final Lcom/google/android/gms/measurement/internal/zzgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzgo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zze:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zze:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw(Lcom/google/android/gms/measurement/internal/zzgo;)Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzR()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzx()Lcom/google/android/gms/measurement/internal/zzim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzim;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzif;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzif;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzc:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzd:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zze:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw(Lcom/google/android/gms/measurement/internal/zzgo;)Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzR()Lcom/google/android/gms/measurement/internal/zzfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzx()Lcom/google/android/gms/measurement/internal/zzim;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzim;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzif;)V

    return-void
.end method
