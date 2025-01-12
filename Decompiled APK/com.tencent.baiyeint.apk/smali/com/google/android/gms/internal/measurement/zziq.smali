.class final Lcom/google/android/gms/internal/measurement/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjk;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zziw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zziw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzio;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziq;->zzb:Lcom/google/android/gms/internal/measurement/zziw;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzip;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zziw;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzho;->zza()Lcom/google/android/gms/internal/measurement/zzho;

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

    check-cast v2, Lcom/google/android/gms/internal/measurement/zziw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zziq;->zzb:Lcom/google/android/gms/internal/measurement/zziw;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzip;-><init>([Lcom/google/android/gms/internal/measurement/zziw;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zziv;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zziv;->zzc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjj;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/zzjj<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjl;->zza(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zziw;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zziv;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zziv;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzht;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzC()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zziv;->zzb()Lcom/google/android/gms/internal/measurement/zziy;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zziy;)Lcom/google/android/gms/internal/measurement/zzjc;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb()Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zziv;->zzb()Lcom/google/android/gms/internal/measurement/zziy;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zziy;)Lcom/google/android/gms/internal/measurement/zzjc;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzht;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Lcom/google/android/gms/internal/measurement/zziv;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzje;->zzb()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzim;->zzd()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzC()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzb()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjd;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zzit;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzje;->zzb()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzim;->zzd()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzC()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzb()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjd;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zzit;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Lcom/google/android/gms/internal/measurement/zziv;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzje;->zza()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzim;->zzc()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzA()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb()Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zza()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjd;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zzit;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzje;->zza()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzim;->zzc()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjl;->zzB()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zza()Lcom/google/android/gms/internal/measurement/zzit;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjd;Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzhg;Lcom/google/android/gms/internal/measurement/zzit;)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    :goto_0
    return-object p1
.end method
