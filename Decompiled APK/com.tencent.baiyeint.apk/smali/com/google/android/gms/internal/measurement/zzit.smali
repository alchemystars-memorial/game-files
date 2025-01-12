.class final Lcom/google/android/gms/internal/measurement/zzit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzis;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzis;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzis;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzis;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzis;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzis;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzis;->zzb(Lcom/google/android/gms/internal/measurement/zzis;)V

    :cond_1
    return-object p0
.end method
