.class public abstract Lcom/google/android/gms/internal/measurement/zzhq;
.super Lcom/google/android/gms/internal/measurement/zzht;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzhq<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzht<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/measurement/zziz;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/measurement/zzhk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzht;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhk;->zza()Lcom/google/android/gms/internal/measurement/zzhk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zza:Lcom/google/android/gms/internal/measurement/zzhk;

    return-void
.end method
