.class final synthetic Lcom/google/android/gms/measurement/internal/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzee;


# static fields
.field static final zza:Lcom/google/android/gms/measurement/internal/zzee;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbj;->zza:Lcom/google/android/gms/measurement/internal/zzee;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzeh;->zza:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlg;->zzq()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
