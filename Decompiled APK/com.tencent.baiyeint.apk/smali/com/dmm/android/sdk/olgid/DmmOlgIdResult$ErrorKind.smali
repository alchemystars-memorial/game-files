.class public final enum Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;
.super Ljava/lang/Enum;
.source "DmmOlgIdResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/DmmOlgIdResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum AccessTokenExpired:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum Cancel:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum CheckUserError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum Maintenance:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum NotConfigure:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum NotPublishedIntSession:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum OlgIdValidityError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum RequireLogin:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

.field public static final enum Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Success:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v3, "RequireLogin"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->RequireLogin:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v5, "AccessTokenExpired"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->AccessTokenExpired:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v5, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v7, "NotPublishedIntSession"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NotPublishedIntSession:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v7, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v9, "NotConfigure"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NotConfigure:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v9, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v11, "NetworkError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->NetworkError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v11, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v13, "HttpStatusError"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->HttpStatusError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v13, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v15, "CheckUserError"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->CheckUserError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v15, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v14, "OlgIdValidityError"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->OlgIdValidityError:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v14, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v12, "Maintenance"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Maintenance:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v12, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v10, "Unknown"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Unknown:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    new-instance v10, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const-string v8, "Cancel"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->Cancel:Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/DmmOlgIdResult$ErrorKind;

    return-object v0
.end method
