.class final Lcom/google/android/gms/measurement/internal/zzhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaf;

.field final synthetic zzb:I

.field final synthetic zzc:J

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;Lcom/google/android/gms/measurement/internal/zzaf;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zze:Lcom/google/android/gms/measurement/internal/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zze:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr(Lcom/google/android/gms/measurement/internal/zzaf;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zze:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzb:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzc:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzhv;->zzd:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhy;->zzW(Lcom/google/android/gms/measurement/internal/zzhy;Lcom/google/android/gms/measurement/internal/zzaf;IJZZ)V

    return-void
.end method
