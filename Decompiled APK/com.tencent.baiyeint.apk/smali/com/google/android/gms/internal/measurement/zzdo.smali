.class public final Lcom/google/android/gms/internal/measurement/zzdo;
.super Lcom/google/android/gms/internal/measurement/zzht;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzht<",
        "Lcom/google/android/gms/internal/measurement/zzdo;",
        "Lcom/google/android/gms/internal/measurement/zzdk;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziz;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzdo;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzia<",
            "Lcom/google/android/gms/internal/measurement/zzdd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzht;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zze:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdo;->zzbE()Lcom/google/android/gms/internal/measurement/zzia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzdk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbt()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdk;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/measurement/zzdo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzdo;Lcom/google/android/gms/internal/measurement/zzdd;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbF(Lcom/google/android/gms/internal/measurement/zzia;)Lcom/google/android/gms/internal/measurement/zzia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdo;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzia;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzdk;-><init>(Lcom/google/android/gms/internal/measurement/zzcs;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzdo;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v3, "zza"

    aput-object v3, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdn;->zzb()Lcom/google/android/gms/internal/measurement/zzhx;

    move-result-object p2

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzdd;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdo;->zzg:Lcom/google/android/gms/internal/measurement/zzdo;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzdo;->zzbz(Lcom/google/android/gms/internal/measurement/zziy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
