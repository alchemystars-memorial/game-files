.class final synthetic Lcom/google/android/gms/measurement/internal/zzjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjs;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzet;

.field private final zzc:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjs;Lcom/google/android/gms/measurement/internal/zzet;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzet;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzb:Lcom/google/android/gms/measurement/internal/zzet;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjp;->zzc:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjs;->zzi(Lcom/google/android/gms/measurement/internal/zzet;Landroid/app/job/JobParameters;)V

    return-void
.end method
