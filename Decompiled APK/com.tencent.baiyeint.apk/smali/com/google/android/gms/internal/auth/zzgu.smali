.class public final Lcom/google/android/gms/internal/auth/zzgu;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/zzfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/auth/zzfa;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth/zzfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzfa;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgu;->zza:Lcom/google/android/gms/internal/auth/zzfa;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/auth/zzgu;)Lcom/google/android/gms/internal/auth/zzfa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzgu;->zza:Lcom/google/android/gms/internal/auth/zzfa;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgu;->zza:Lcom/google/android/gms/internal/auth/zzfa;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzez;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzez;->zzf(I)Ljava/lang/String;

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

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzgt;-><init>(Lcom/google/android/gms/internal/auth/zzgu;)V

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

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/zzgs;-><init>(Lcom/google/android/gms/internal/auth/zzgu;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgu;->zza:Lcom/google/android/gms/internal/auth/zzfa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzfa;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/auth/zzfa;
    .locals 0

    return-object p0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgu;->zza:Lcom/google/android/gms/internal/auth/zzfa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzfa;->zzg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
