.class final synthetic Lcom/google/android/gms/measurement/internal/zzfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgo;

.field private final zzb:Lcom/google/android/gms/measurement/internal/zzp;

.field private final zzc:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgo;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zza:Lcom/google/android/gms/measurement/internal/zzgo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzb:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfx;->zzc:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv(Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    return-void
.end method
