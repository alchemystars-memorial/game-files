.class public final Lcom/google/android/gms/internal/measurement/zznn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznm;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzfg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfe;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzex;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.max_bundles_per_iteration"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznn;->zza:Lcom/google/android/gms/internal/measurement/zzfg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznn;->zza:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
