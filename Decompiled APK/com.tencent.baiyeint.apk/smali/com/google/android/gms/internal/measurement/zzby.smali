.class public final Lcom/google/android/gms/internal/measurement/zzby;
.super Lcom/google/android/gms/internal/measurement/zzht;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzht<",
        "Lcom/google/android/gms/internal/measurement/zzby;",
        "Lcom/google/android/gms/internal/measurement/zzbx;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziz;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzby;


# instance fields
.field private zza:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzck;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzcd;

.field private zzg:Z

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzby;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzht;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/measurement/zzby;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/measurement/zzby;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzby;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zze:Lcom/google/android/gms/internal/measurement/zzck;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck;->zzi()Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzcd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzf:Lcom/google/android/gms/internal/measurement/zzcd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd;->zzk()Lcom/google/android/gms/internal/measurement/zzcd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzg:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzby;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbx;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbx;-><init>(Lcom/google/android/gms/internal/measurement/zzbs;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzby;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzby;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v3, "zza"

    aput-object v3, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzby;->zzi:Lcom/google/android/gms/internal/measurement/zzby;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzby;->zzbz(Lcom/google/android/gms/internal/measurement/zziy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
