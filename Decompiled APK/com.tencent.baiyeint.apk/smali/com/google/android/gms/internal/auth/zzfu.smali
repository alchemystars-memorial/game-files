.class final Lcom/google/android/gms/internal/auth/zzfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzgb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth/zzfq;

.field private final zzb:Lcom/google/android/gms/internal/auth/zzgp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/auth/zzeh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;",
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;",
            "Lcom/google/android/gms/internal/auth/zzfq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzb:Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/auth/zzeh;->zzc(Lcom/google/android/gms/internal/auth/zzfq;)Z

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzc:Lcom/google/android/gms/internal/auth/zzeh;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzfu;->zza:Lcom/google/android/gms/internal/auth/zzfq;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfq;)Lcom/google/android/gms/internal/auth/zzfu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;",
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;",
            "Lcom/google/android/gms/internal/auth/zzfq;",
            ")",
            "Lcom/google/android/gms/internal/auth/zzfu<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/zzfu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzfu;-><init>(Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfq;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzb:Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgp;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zza:Lcom/google/android/gms/internal/auth/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeq;->zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzfp;->zzg()Lcom/google/android/gms/internal/auth/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzb:Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgp;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzc:Lcom/google/android/gms/internal/auth/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzeh;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzb:Lcom/google/android/gms/internal/auth/zzgp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgd;->zzf(Lcom/google/android/gms/internal/auth/zzgp;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/auth/zzeq;

    iget-object p3, p2, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgq;->zza()Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgq;->zzc()Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/auth/zzep;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzb:Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgp;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzb:Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgp;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzi(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfu;->zzc:Lcom/google/android/gms/internal/auth/zzeh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzeh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzel;

    const/4 p1, 0x0

    throw p1
.end method
