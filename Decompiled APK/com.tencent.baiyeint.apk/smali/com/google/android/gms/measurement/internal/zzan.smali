.class public final Lcom/google/android/gms/measurement/internal/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"


# instance fields
.field final zza:Ljava/lang/String;

.field final zzb:Ljava/lang/String;

.field final zzc:Ljava/lang/String;

.field final zzd:J

.field final zze:J

.field final zzf:Lcom/google/android/gms/measurement/internal/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x1

    if-ne v0, p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/zzan;->zze:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zze()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId"

    invoke-virtual {p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p9, :cond_5

    invoke-virtual {p9}, Landroid/os/Bundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzet;->zzb()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p4

    const-string p5, "Param name can\'t be null"

    invoke-virtual {p4, p5}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzl()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p5

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p4, p6}, Lcom/google/android/gms/measurement/internal/zzkv;->zzE(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzet;->zze()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p5

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzm()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object p6

    invoke-virtual {p6, p4}, Lcom/google/android/gms/measurement/internal/zzeo;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p6, "Param value can\'t be null"

    invoke-virtual {p5, p6, p4}, Lcom/google/android/gms/measurement/internal/zzer;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzl()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p6

    invoke-virtual {p6, p2, p4, p5}, Lcom/google/android/gms/measurement/internal/zzkv;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {p1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzaq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/zzan;->zze:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zzat()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zze()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzet;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId, name"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x21

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Event{appId=\'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', name=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', params="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzfw;J)Lcom/google/android/gms/measurement/internal/zzan;
    .locals 11

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    move-object v0, v10

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzaq;)V

    return-object v10
.end method
