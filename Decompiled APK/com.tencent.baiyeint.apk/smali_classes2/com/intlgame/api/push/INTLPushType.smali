.class public final enum Lcom/intlgame/api/push/INTLPushType;
.super Ljava/lang/Enum;
.source "INTLPushType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intlgame/api/push/INTLPushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intlgame/api/push/INTLPushType;

.field public static final enum LOCAL_NOTIFICATION_ClICK:Lcom/intlgame/api/push/INTLPushType;

.field public static final enum LOCAL_NOTIFICATION_FOREGROUND:Lcom/intlgame/api/push/INTLPushType;

.field public static final enum REMOTE_NOTIFICATION_ClICK:Lcom/intlgame/api/push/INTLPushType;

.field public static final enum REMOTE_NOTIFICATION_FOREGROUND:Lcom/intlgame/api/push/INTLPushType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/intlgame/api/push/INTLPushType;

    const-string v1, "REMOTE_NOTIFICATION_FOREGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/intlgame/api/push/INTLPushType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/intlgame/api/push/INTLPushType;->REMOTE_NOTIFICATION_FOREGROUND:Lcom/intlgame/api/push/INTLPushType;

    new-instance v1, Lcom/intlgame/api/push/INTLPushType;

    const-string v3, "REMOTE_NOTIFICATION_ClICK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/intlgame/api/push/INTLPushType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/intlgame/api/push/INTLPushType;->REMOTE_NOTIFICATION_ClICK:Lcom/intlgame/api/push/INTLPushType;

    new-instance v3, Lcom/intlgame/api/push/INTLPushType;

    const-string v5, "LOCAL_NOTIFICATION_FOREGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/intlgame/api/push/INTLPushType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/intlgame/api/push/INTLPushType;->LOCAL_NOTIFICATION_FOREGROUND:Lcom/intlgame/api/push/INTLPushType;

    new-instance v5, Lcom/intlgame/api/push/INTLPushType;

    const-string v7, "LOCAL_NOTIFICATION_ClICK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/intlgame/api/push/INTLPushType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/intlgame/api/push/INTLPushType;->LOCAL_NOTIFICATION_ClICK:Lcom/intlgame/api/push/INTLPushType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/intlgame/api/push/INTLPushType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/intlgame/api/push/INTLPushType;->$VALUES:[Lcom/intlgame/api/push/INTLPushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/intlgame/api/push/INTLPushType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intlgame/api/push/INTLPushType;
    .locals 1

    const-class v0, Lcom/intlgame/api/push/INTLPushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intlgame/api/push/INTLPushType;

    return-object p0
.end method

.method public static values()[Lcom/intlgame/api/push/INTLPushType;
    .locals 1

    sget-object v0, Lcom/intlgame/api/push/INTLPushType;->$VALUES:[Lcom/intlgame/api/push/INTLPushType;

    invoke-virtual {v0}, [Lcom/intlgame/api/push/INTLPushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intlgame/api/push/INTLPushType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/intlgame/api/push/INTLPushType;->value:I

    return v0
.end method
