.class final Lcom/google/android/gms/internal/play_billing/zzfu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgn;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzga;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzga;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfu;->zza:Lcom/google/android/gms/internal/play_billing/zzga;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzft;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/zzga;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzes;->zza()Lcom/google/android/gms/internal/play_billing/zzes;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzga;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzfu;->zza:Lcom/google/android/gms/internal/play_billing/zzga;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzft;-><init>([Lcom/google/android/gms/internal/play_billing/zzga;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzfd;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:Lcom/google/android/gms/internal/play_billing/zzga;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/play_billing/zzfz;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgm;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzq(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb:Lcom/google/android/gms/internal/play_billing/zzga;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzga;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzfz;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzex;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzn()Lcom/google/android/gms/internal/play_billing/zzhd;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzem;->zzb()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzfz;->zza()Lcom/google/android/gms/internal/play_billing/zzgc;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzm()Lcom/google/android/gms/internal/play_billing/zzhd;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzem;->zza()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzfz;->zza()Lcom/google/android/gms/internal/play_billing/zzgc;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgg;->zzc(Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzgc;)Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzex;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb(Lcom/google/android/gms/internal/play_billing/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgi;->zzb()Lcom/google/android/gms/internal/play_billing/zzgh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfq;->zzd()Lcom/google/android/gms/internal/play_billing/zzfq;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzn()Lcom/google/android/gms/internal/play_billing/zzhd;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzem;->zzb()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzb()Lcom/google/android/gms/internal/play_billing/zzfx;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzgf;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgi;->zzb()Lcom/google/android/gms/internal/play_billing/zzgh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfq;->zzd()Lcom/google/android/gms/internal/play_billing/zzfq;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzn()Lcom/google/android/gms/internal/play_billing/zzhd;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzb()Lcom/google/android/gms/internal/play_billing/zzfx;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzgf;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzb(Lcom/google/android/gms/internal/play_billing/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()Lcom/google/android/gms/internal/play_billing/zzgh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfq;->zzc()Lcom/google/android/gms/internal/play_billing/zzfq;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzm()Lcom/google/android/gms/internal/play_billing/zzhd;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzem;->zza()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfy;->zza()Lcom/google/android/gms/internal/play_billing/zzfx;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzgf;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()Lcom/google/android/gms/internal/play_billing/zzgh;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfq;->zzc()Lcom/google/android/gms/internal/play_billing/zzfq;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgo;->zzm()Lcom/google/android/gms/internal/play_billing/zzhd;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfy;->zza()Lcom/google/android/gms/internal/play_billing/zzfx;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzgf;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzgh;Lcom/google/android/gms/internal/play_billing/zzfq;Lcom/google/android/gms/internal/play_billing/zzhd;Lcom/google/android/gms/internal/play_billing/zzek;Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzgf;

    move-result-object p1

    :goto_0
    return-object p1
.end method
