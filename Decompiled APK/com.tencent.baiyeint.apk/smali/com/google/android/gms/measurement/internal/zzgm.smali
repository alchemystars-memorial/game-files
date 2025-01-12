.class final Lcom/google/android/gms/measurement/internal/zzgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzgo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgo;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Lcom/google/android/gms/measurement/internal/zzgo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw(Lcom/google/android/gms/measurement/internal/zzgo;)Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzK()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw(Lcom/google/android/gms/measurement/internal/zzgo;)Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zzS(Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
