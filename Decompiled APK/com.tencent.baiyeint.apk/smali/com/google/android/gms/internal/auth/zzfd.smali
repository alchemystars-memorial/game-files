.class final Lcom/google/android/gms/internal/auth/zzfd;
.super Lcom/google/android/gms/internal/auth/zzfe;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(Lcom/google/android/gms/internal/auth/zzfb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzfb;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(Lcom/google/android/gms/internal/auth/zzfb;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/auth/zzeu;->zzb()V

    return-void
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/auth/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/auth/zzgz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/auth/zzeu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzeu;->size()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzeu;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzeu;->zzc()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/auth/zzeu;->zzd(I)Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/auth/zzeu;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
