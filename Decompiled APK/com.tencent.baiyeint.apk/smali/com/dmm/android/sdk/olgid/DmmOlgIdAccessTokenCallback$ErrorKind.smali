.class public final enum Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;
.super Ljava/lang/Enum;
.source "DmmOlgIdAccessTokenCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

.field public static final enum ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

.field public static final enum NO_NEED_UPDATE:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

.field public static final enum REQUIRE_LOGIN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

.field public static final enum UNKNOWN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    const-string v1, "REQUIRE_LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->REQUIRE_LOGIN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    const-string v3, "NO_NEED_UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->NO_NEED_UPDATE:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    new-instance v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    const-string v5, "ACCESS_TOKEN_EXPIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    new-instance v5, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->UNKNOWN:Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;

    return-object v0
.end method
