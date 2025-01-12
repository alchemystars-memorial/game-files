.class final Lcom/google/android/gms/internal/measurement/zzbi;
.super Lcom/google/android/gms/internal/measurement/zzu;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbi;->zza:Lcom/google/android/gms/measurement/internal/zzgx;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbi;->zza:Lcom/google/android/gms/measurement/internal/zzgx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzgx;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbi;->zza:Lcom/google/android/gms/measurement/internal/zzgx;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
