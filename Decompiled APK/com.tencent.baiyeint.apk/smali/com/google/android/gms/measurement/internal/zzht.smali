.class final Lcom/google/android/gms/measurement/internal/zzht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaf;

.field final synthetic zzb:J

.field final synthetic zzc:I

.field final synthetic zzd:J

.field final synthetic zze:Z

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzhy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;Lcom/google/android/gms/measurement/internal/zzaf;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzf:Lcom/google/android/gms/measurement/internal/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzc:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzd:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzf:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr(Lcom/google/android/gms/measurement/internal/zzaf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzf:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhy;->zzG(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzf:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzc:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzht;->zzd:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Z

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzhy;->zzW(Lcom/google/android/gms/measurement/internal/zzhy;Lcom/google/android/gms/measurement/internal/zzaf;IJZZ)V

    return-void
.end method
