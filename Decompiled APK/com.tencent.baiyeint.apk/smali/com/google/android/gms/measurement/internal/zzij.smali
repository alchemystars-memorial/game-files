.class final Lcom/google/android/gms/measurement/internal/zzij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzim;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzim;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzim;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zze;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzB()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzc(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzim;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzim;->zza:Lcom/google/android/gms/measurement/internal/zzif;

    return-void
.end method
