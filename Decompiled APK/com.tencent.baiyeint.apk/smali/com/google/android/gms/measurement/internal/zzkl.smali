.class final Lcom/google/android/gms/measurement/internal/zzkl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Landroid/os/Bundle;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzkm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkm;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzkm;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzkm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzr()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzkm;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzko;->zzax()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "_err"

    const-string v5, "auto"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzkv;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:Lcom/google/android/gms/measurement/internal/zzkm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/measurement/internal/zzko;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzko;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    return-void
.end method
