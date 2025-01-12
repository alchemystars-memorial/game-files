.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjr;


# instance fields
.field private zza:Lcom/google/android/gms/measurement/internal/zzjs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzjs<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final zzd()Lcom/google/android/gms/measurement/internal/zzjs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzjs<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzd()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjs;->zza()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzd()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjs;->zzb()V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzd()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjs;->zzh(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzd()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjs;->zzg(Landroid/app/job/JobParameters;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zzd()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzjs;->zzf(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final zza(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb(Landroid/app/job/JobParameters;Z)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final zzc(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
