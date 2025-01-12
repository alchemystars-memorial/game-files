.class final enum Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;
.super Ljava/lang/Enum;
.source "AuthActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/lib/auth/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LaunchWebType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "CUSTOM_TABS",
        "BROWSER",
        "WEB_VIEW",
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
.field private static final synthetic $VALUES:[Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

.field public static final enum BROWSER:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

.field public static final enum CUSTOM_TABS:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

.field public static final enum NONE:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

.field public static final enum WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    new-instance v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->NONE:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    const-string v2, "CUSTOM_TABS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->CUSTOM_TABS:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    const-string v2, "BROWSER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->BROWSER:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    const-string v2, "WEB_VIEW"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->WEB_VIEW:Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->$VALUES:[Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;
    .locals 1

    const-class v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->$VALUES:[Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    invoke-virtual {v0}, [Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/lib/auth/AuthActivity$LaunchWebType;

    return-object v0
.end method
