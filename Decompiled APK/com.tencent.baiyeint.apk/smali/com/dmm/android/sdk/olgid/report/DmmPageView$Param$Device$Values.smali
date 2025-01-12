.class public final enum Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;
.super Ljava/lang/Enum;
.source "DmmPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

.field public static final enum AndroidApplication:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

.field public static final enum Emulator:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

.field public static final enum PC:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

.field public static final enum SmartPhoneBrowser:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;


# instance fields
.field private device:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    const-string v1, "PC"

    const/4 v2, 0x0

    const-string v3, "pc"

    invoke-direct {v0, v1, v2, v3}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->PC:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    new-instance v1, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    const-string v3, "SmartPhoneBrowser"

    const/4 v4, 0x1

    const-string/jumbo v5, "sp"

    invoke-direct {v1, v3, v4, v5}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->SmartPhoneBrowser:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    new-instance v3, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    const-string v5, "AndroidApplication"

    const/4 v6, 0x2

    const-string v7, "android_app"

    invoke-direct {v3, v5, v6, v7}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->AndroidApplication:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    new-instance v5, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    const-string v7, "Emulator"

    const/4 v8, 0x3

    const-string v9, "emulator"

    invoke-direct {v5, v7, v8, v9}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->Emulator:Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->$VALUES:[Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->device:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->$VALUES:[Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->device:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/report/DmmPageView$Param$Device$Values;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
