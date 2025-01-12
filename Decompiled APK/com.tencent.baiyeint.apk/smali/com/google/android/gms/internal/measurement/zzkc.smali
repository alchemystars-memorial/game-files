.class public final Lcom/google/android/gms/internal/measurement/zzkc;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/zzii;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/measurement/zzii;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzii;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzii;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzii;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzih;->zzd(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzkb;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzka;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzka;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzii;->size()I

    move-result v0

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/measurement/zzgt;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzg(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->zzg(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkc;->zza:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/measurement/zzii;
    .locals 0

    return-object p0
.end method
