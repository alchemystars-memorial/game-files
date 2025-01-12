.class public final Lcom/google/android/gms/internal/measurement/zzdq;
.super Lcom/google/android/gms/internal/measurement/zzht;
.source "com.google.android.gms:play-services-measurement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zziz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzht<",
        "Lcom/google/android/gms/internal/measurement/zzdq;",
        "Lcom/google/android/gms/internal/measurement/zzdp;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zziz;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzdq;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzhz;

.field private zze:Lcom/google/android/gms/internal/measurement/zzhz;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzia<",
            "Lcom/google/android/gms/internal/measurement/zzcz;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/zzia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzia<",
            "Lcom/google/android/gms/internal/measurement/zzds;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzdq;->zzh:Lcom/google/android/gms/internal/measurement/zzdq;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzht;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzht;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbC()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbC()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbE()Lcom/google/android/gms/internal/measurement/zzia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbE()Lcom/google/android/gms/internal/measurement/zzia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    return-void
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzdp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdq;->zzh:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbt()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzdp;

    return-object v0
.end method

.method public static zzm()Lcom/google/android/gms/internal/measurement/zzdq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdq;->zzh:Lcom/google/android/gms/internal/measurement/zzdq;

    return-object v0
.end method

.method static synthetic zzn()Lcom/google/android/gms/internal/measurement/zzdq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzdq;->zzh:Lcom/google/android/gms/internal/measurement/zzdq;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbD(Lcom/google/android/gms/internal/measurement/zzhz;)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzdq;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbC()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbD(Lcom/google/android/gms/internal/measurement/zzhz;)Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/measurement/zzdq;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbC()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzw()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/measurement/zzdq;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzw()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzia;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzx()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgb;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/measurement/zzdq;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdq;->zzx()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzia;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final zzw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbF(Lcom/google/android/gms/internal/measurement/zzia;)Lcom/google/android/gms/internal/measurement/zzia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    :cond_0
    return-void
.end method

.method private final zzx()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzia;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zzbF(Lcom/google/android/gms/internal/measurement/zzia;)Lcom/google/android/gms/internal/measurement/zzia;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzia;->size()I

    move-result v0

    return v0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/measurement/zzcz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzf:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzia;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcz;

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzds;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    return-object v0
.end method

.method public final zzi()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzia;->size()I

    move-result v0

    return v0
.end method

.method public final zzj(I)Lcom/google/android/gms/internal/measurement/zzds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzg:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzia;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzds;

    return-object p1
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzdq;->zzh:Lcom/google/android/gms/internal/measurement/zzdq;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzdp;-><init>(Lcom/google/android/gms/internal/measurement/zzcs;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzdq;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "zza"

    aput-object v4, p1, v3

    const-string/jumbo v3, "zze"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/gms/internal/measurement/zzcz;

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/measurement/zzds;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzdq;->zzh:Lcom/google/android/gms/internal/measurement/zzdq;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbz(Lcom/google/android/gms/internal/measurement/zziy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
