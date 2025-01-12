.class public final enum Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;
.super Ljava/lang/Enum;
.source "DmmGetOlgIdProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

.field public static final enum CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

.field public static final enum CheckingValidity:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

.field public static final enum Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    const-string v1, "Configuration"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->Configuration:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    const-string v3, "CheckingProfileRegistered"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingProfileRegistered:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    new-instance v3, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    const-string v5, "CheckingValidity"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->CheckingValidity:Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->$VALUES:[Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->$VALUES:[Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/DmmGetOlgIdProgress;

    return-object v0
.end method
