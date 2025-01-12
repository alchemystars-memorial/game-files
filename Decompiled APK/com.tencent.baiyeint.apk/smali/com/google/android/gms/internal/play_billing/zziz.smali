.class public final Lcom/google/android/gms/internal/play_billing/zziz;
.super Lcom/google/android/gms/internal/play_billing/zzex;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zziz;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zziz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zziz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zziz;->zzb:Lcom/google/android/gms/internal/play_billing/zziz;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zziz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzp(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzex;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzex;-><init>()V

    return-void
.end method

.method static synthetic zzv()Lcom/google/android/gms/internal/play_billing/zziz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zziz;->zzb:Lcom/google/android/gms/internal/play_billing/zziz;

    return-object v0
.end method

.method public static zzw()Lcom/google/android/gms/internal/play_billing/zziz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zziz;->zzb:Lcom/google/android/gms/internal/play_billing/zziz;

    return-object v0
.end method


# virtual methods
.method protected final zzu(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zziz;->zzb:Lcom/google/android/gms/internal/play_billing/zziz;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzix;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzix;-><init>(Lcom/google/android/gms/internal/play_billing/zziw;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zziz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zziz;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v1, "zzd"

    aput-object v1, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zziy;->zza:Lcom/google/android/gms/internal/play_billing/zzfb;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zziz;->zzb:Lcom/google/android/gms/internal/play_billing/zziz;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zziz;->zzm(Lcom/google/android/gms/internal/play_billing/zzgc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
