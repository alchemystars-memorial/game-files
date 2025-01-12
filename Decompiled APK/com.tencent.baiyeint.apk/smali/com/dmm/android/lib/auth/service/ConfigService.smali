.class public final Lcom/dmm/android/lib/auth/service/ConfigService;
.super Ljava/lang/Object;
.source "ConfigService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/ConfigService;",
        "",
        "()V",
        "config",
        "Lcom/dmm/android/lib/auth/Config;",
        "getConfig",
        "initConfig",
        "",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

.field private static config:Lcom/dmm/android/lib/auth/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-direct {v0}, Lcom/dmm/android/lib/auth/service/ConfigService;-><init>()V

    sput-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/dmm/android/lib/auth/Config;
    .locals 2

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->config:Lcom/dmm/android/lib/auth/Config;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Config is not initialized. Make sure to call DmmAuthSdk.init(Config) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final initConfig(Lcom/dmm/android/lib/auth/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->config:Lcom/dmm/android/lib/auth/Config;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Config is already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    sput-object p1, Lcom/dmm/android/lib/auth/service/ConfigService;->config:Lcom/dmm/android/lib/auth/Config;

    return-void
.end method
