.class final Lcom/google/android/gms/measurement/internal/zzkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"


# instance fields
.field final zza:Ljava/lang/String;

.field final zzb:Ljava/lang/String;

.field final zzc:Ljava/lang/String;

.field final zzd:J

.field final zze:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkt;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkt;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkt;->zzc:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzkt;->zzd:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzkt;->zze:Ljava/lang/Object;

    return-void
.end method
