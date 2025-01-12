.class final Lcom/google/android/gms/measurement/internal/zzjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzko;

.field final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjs;Lcom/google/android/gms/measurement/internal/zzko;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzK()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zzJ(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzF()V

    return-void
.end method
