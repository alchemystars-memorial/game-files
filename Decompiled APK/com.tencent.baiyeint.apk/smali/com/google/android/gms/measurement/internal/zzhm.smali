.class final Lcom/google/android/gms/measurement/internal/zzhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zze:Lcom/google/android/gms/measurement/internal/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zze:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzhy;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzy()Lcom/google/android/gms/measurement/internal/zzjm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzc:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzhm;->zzd:Z

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjm;->zzq(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
