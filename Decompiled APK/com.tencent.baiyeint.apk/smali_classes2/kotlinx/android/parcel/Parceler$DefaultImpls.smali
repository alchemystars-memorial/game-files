.class public final Lkotlinx/android/parcel/Parceler$DefaultImpls;
.super Ljava/lang/Object;
.source "Parceler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/android/parcel/Parceler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static newArray(Lkotlinx/android/parcel/Parceler;I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/android/parcel/Parceler<",
            "TT;>;I)[TT;"
        }
    .end annotation

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Generated by Android Extensions automatically"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
