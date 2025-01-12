.class public final Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;
.super Ljava/lang/Object;
.source "DMMAuthSDK.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/DMMAuthSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;",
        "",
        "()V",
        "KEY_COMPLETE_CONTINUES_LOGIN",
        "",
        "KEY_DMM_AUTH_CODE",
        "TAG",
        "init",
        "",
        "config",
        "Lcom/dmm/android/lib/auth/Config;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/DMMAuthSDK$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lcom/dmm/android/lib/auth/Config;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/service/ConfigService;->initConfig(Lcom/dmm/android/lib/auth/Config;)V

    return-void
.end method
