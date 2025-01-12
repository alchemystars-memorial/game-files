.class final synthetic Lcom/google/android/gms/measurement/internal/zzjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjx;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgp;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzeh;->zzat:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfw;->zzd()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfi;->zzq:Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb(Z)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzt()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjz;->zzb(J)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzgp;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfw;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzeh;->zzak:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Lcom/google/android/gms/measurement/internal/zzjz;

    iget-wide v9, v7, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:J

    iput-wide v2, v7, Lcom/google/android/gms/measurement/internal/zzjz;->zzb:J

    sub-long v9, v2, v9

    const-string v7, "_et"

    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zze;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfw;->zzx()Lcom/google/android/gms/measurement/internal/zzim;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzh(Z)Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v7

    invoke-static {v7, v0, v4}, Lcom/google/android/gms/measurement/internal/zzim;->zzm(Lcom/google/android/gms/measurement/internal/zzif;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:Lcom/google/android/gms/measurement/internal/zzjz;

    invoke-virtual {v7, v8, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjz;->zzd(ZZJ)Z

    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zze;->zzx:Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzk()Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
