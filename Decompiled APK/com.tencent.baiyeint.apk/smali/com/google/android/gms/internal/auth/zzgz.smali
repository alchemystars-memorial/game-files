.class final Lcom/google/android/gms/internal/auth/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# static fields
.field static final zza:Z

.field private static final zzb:Lsun/misc/Unsafe;

.field private static final zzc:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzd:Z

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/auth/zzgy;

.field private static final zzg:Z

.field private static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zzg()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lcom/google/android/gms/internal/auth/zzgz;->zzb:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdo;->zza()Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/auth/zzgz;->zzc:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/auth/zzgz;->zzs(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/android/gms/internal/auth/zzgz;->zzd:Z

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/internal/auth/zzgz;->zzs(Ljava/lang/Class;)Z

    move-result v7

    sput-boolean v7, Lcom/google/android/gms/internal/auth/zzgz;->zze:Z

    const/4 v8, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    new-instance v8, Lcom/google/android/gms/internal/auth/zzgx;

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/auth/zzgx;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    new-instance v8, Lcom/google/android/gms/internal/auth/zzgw;

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/auth/zzgw;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v8, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    const-string v5, "getLong"

    const-string v6, "objectFieldOffset"

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_3

    :goto_1
    move v8, v10

    goto :goto_2

    :cond_3
    iget-object v8, v8, Lcom/google/android/gms/internal/auth/zzgy;->zza:Lsun/misc/Unsafe;

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/reflect/Field;

    aput-object v12, v11, v10

    invoke-virtual {v8, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zzy()Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    move v8, v9

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-static {v8}, Lcom/google/android/gms/internal/auth/zzgz;->zzh(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_2
    sput-boolean v8, Lcom/google/android/gms/internal/auth/zzgz;->zzg:Z

    sget-object v8, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    if-nez v8, :cond_6

    :goto_3
    move v5, v10

    goto/16 :goto_4

    :cond_6
    iget-object v8, v8, Lcom/google/android/gms/internal/auth/zzgy;->zza:Lsun/misc/Unsafe;

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/lang/reflect/Field;

    aput-object v12, v11, v10

    invoke-virtual {v8, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v6, v10

    const-string v11, "arrayBaseOffset"

    invoke-virtual {v8, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v6, v10

    const-string v11, "arrayIndexScale"

    invoke-virtual {v8, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v6, v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v6, v9

    const-string v11, "getInt"

    invoke-virtual {v8, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    const-string v12, "putInt"

    invoke-virtual {v8, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v10

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v5, v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v9

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v7

    const-string v11, "putLong"

    invoke-virtual {v8, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v5, v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v9

    const-string v11, "getObject"

    invoke-virtual {v8, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v10

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v7

    const-string v6, "putObject"

    invoke-virtual {v8, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v9

    goto :goto_4

    :catchall_1
    move-exception v5

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/zzgz;->zzh(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :goto_4
    sput-boolean v5, Lcom/google/android/gms/internal/auth/zzgz;->zzh:Z

    const-class v5, [B

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzgz;->zzx(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzgz;->zzx(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzgz;->zzx(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzgz;->zzx(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzgz;->zzx(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzgz;->zzw(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzgz;->zzx(Ljava/lang/Class;)I

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zzy()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v1, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth/zzgy;->zzk(Ljava/lang/reflect/Field;)J

    :cond_8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    goto :goto_5

    :cond_9
    move v9, v10

    :goto_5
    sput-boolean v9, Lcom/google/android/gms/internal/auth/zzgz;->zza:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzb(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzb(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static zzc(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzi(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zzd(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzj(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzl(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static zzg()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/auth/zzgv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzgv;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic zzh(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/auth/zzgz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x47

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzi(Ljava/lang/Object;JZ)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzgy;->zzi(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int/2addr p2, p1

    not-int p2, p2

    and-int/2addr p2, v3

    shl-int p1, p3, p1

    or-int/2addr p1, p2

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/auth/zzgy;->zzm(Ljava/lang/Object;JI)V

    return-void
.end method

.method static synthetic zzj(Ljava/lang/Object;JZ)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzgy;->zzi(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int/2addr p2, p1

    not-int p2, p2

    and-int/2addr p2, v3

    shl-int p1, p3, p1

    or-int/2addr p1, p2

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/google/android/gms/internal/auth/zzgy;->zzm(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzk(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgy;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzl(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzgy;->zzd(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zzm(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgy;->zze(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zzn(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgy;->zzm(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzo(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzgy;->zzn(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zzp(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgy;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic zzq(Ljava/lang/Object;J)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/auth/zzgy;->zzi(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzr(Ljava/lang/Object;J)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/auth/zzgy;->zzi(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static zzs(Ljava/lang/Class;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/auth/zzdo;->zza:I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgz;->zzc:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "peekLong"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeLong"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeInt"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "peekInt"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-string v7, "peekByte"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    aput-object v0, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-string v8, "pokeByteArray"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    aput-object v0, v5, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    const-string p0, "peekByteArray"

    invoke-virtual {v2, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    return v1
.end method

.method static zzt(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zzf(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzu()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzgz;->zzh:Z

    return v0
.end method

.method static zzv()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzgz;->zzg:Z

    return v0
.end method

.method private static zzw(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzgz;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/zzgy;->zzg(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzx(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/auth/zzgz;->zzh:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgz;->zzf:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/zzgy;->zzh(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zzy()Ljava/lang/reflect/Field;
    .locals 3

    sget v0, Lcom/google/android/gms/internal/auth/zzdo;->zza:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
