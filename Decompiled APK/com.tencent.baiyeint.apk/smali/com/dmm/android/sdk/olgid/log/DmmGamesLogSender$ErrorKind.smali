.class public final enum Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;
.super Ljava/lang/Enum;
.source "DmmGamesLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

.field public static final enum API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

.field public static final enum ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    const-string v1, "API_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->API_ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    new-instance v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->ERROR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;

    return-object v0
.end method
