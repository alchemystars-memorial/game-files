.class public final enum Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;
.super Ljava/lang/Enum;
.source "DmmGamesLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_ACCESS_TOKEN_EXPIRATION_DATE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_APPLICATION_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_AUTH_AGENT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_DMM_GAMES_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_ENDPOINT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_PAYMENT_CALLBACK:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_REDIRECT_URL:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_SECURE_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_SETTINGS:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum GET_UNIQUE_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum INIT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum IS_ABLE_UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum IS_ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum IS_ADULT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum IS_EMULATOR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum IS_LOGGED_IN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum IS_SANDBOX:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum LOGIN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum LOGOUT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum OPEN_PAYMENT_CONFIRM_VIEW:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum PUBLISH_INT_SESSION:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum REGISTER_PROFILE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum REGISTER_USER:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum SET_PAYMENT_CALLBACK:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

.field public static final enum UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->INIT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v3, "CONFIGURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->CONFIGURE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v5, "GET_OLGID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_OLGID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v5, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v7, "GET_ENDPOINT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_ENDPOINT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v7, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v9, "PUBLISH_INT_SESSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->PUBLISH_INT_SESSION:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v9, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v11, "UPDATE_ACCESS_TOKEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v11, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v13, "IS_ACCESS_TOKEN_EXPIRED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_ACCESS_TOKEN_EXPIRED:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v13, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v15, "IS_ABLE_UPDATE_ACCESS_TOKEN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_ABLE_UPDATE_ACCESS_TOKEN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v15, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v14, "GET_ACCESS_TOKEN_EXPIRATION_DATE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_ACCESS_TOKEN_EXPIRATION_DATE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v14, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v12, "REGISTER_USER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->REGISTER_USER:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v12, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v10, "LOGIN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->LOGIN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v10, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v8, "IS_SANDBOX"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_SANDBOX:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v8, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "IS_LOGGED_IN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_LOGGED_IN:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v4, "LOGOUT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->LOGOUT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v2, "REGISTER_PROFILE"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->REGISTER_PROFILE:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "IS_ADULT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_ADULT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v4, "GET_SECURE_ID"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_SECURE_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v2, "GET_UNIQUE_ID"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_UNIQUE_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "GET_APPLICATION_ID"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_APPLICATION_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v4, "OPEN_PAYMENT_CONFIRM_VIEW"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->OPEN_PAYMENT_CONFIRM_VIEW:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v2, "SET_PAYMENT_CALLBACK"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->SET_PAYMENT_CALLBACK:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "GET_PAYMENT_CALLBACK"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_PAYMENT_CALLBACK:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v4, "GET_DMM_GAMES_ID"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_DMM_GAMES_ID:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v4, "IS_EMULATOR"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->IS_EMULATOR:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "GET_SETTINGS"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_SETTINGS:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "GET_REDIRECT_URL"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_REDIRECT_URL:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    new-instance v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const-string v6, "GET_AUTH_AGENT"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->GET_AUTH_AGENT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const/16 v2, 0x1b

    new-array v2, v2, [Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v4, v2, v0

    sput-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;
    .locals 1

    const-class v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    return-object p0
.end method

.method public static values()[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;
    .locals 1

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->$VALUES:[Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-virtual {v0}, [Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    return-object v0
.end method
