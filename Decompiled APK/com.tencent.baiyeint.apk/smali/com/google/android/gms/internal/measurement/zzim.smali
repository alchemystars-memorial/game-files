.class abstract Lcom/google/android/gms/internal/measurement/zzim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzim;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzim;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzik;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Lcom/google/android/gms/internal/measurement/zzij;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zza:Lcom/google/android/gms/internal/measurement/zzim;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzil;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzil;-><init>(Lcom/google/android/gms/internal/measurement/zzij;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/measurement/zzim;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zza:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/measurement/zzim;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
