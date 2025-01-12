.class final Lcom/google/android/gms/internal/measurement/zzge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/measurement/zzhf;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhf;->zza()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzd:Lcom/google/android/gms/internal/measurement/zzhf;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzd:Lcom/google/android/gms/internal/measurement/zzhf;

    return-void
.end method
