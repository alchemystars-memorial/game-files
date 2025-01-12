.class final enum Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1qSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AFa1ySDK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

.field private static final synthetic afDebugLog:[Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

.field private static enum valueOf:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

.field private static enum values:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    new-instance v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    const-string v1, "ACCELEROMETER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    new-instance v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    const-string v1, "MAGNETOMETER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->AFInAppEventType:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    new-instance v1, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    const-string v5, "RESERVED"

    const/4 v6, 0x3

    invoke-direct {v1, v5, v6}, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    new-instance v1, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    const-string v5, "GYROSCOPE"

    const/4 v7, 0x4

    invoke-direct {v1, v5, v7}, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->valueOf:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    sget-object v8, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    aput-object v8, v5, v2

    sget-object v2, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->values:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    aput-object v2, v5, v3

    aput-object v0, v5, v4

    sget-object v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    sput-object v5, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->afDebugLog:[Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->afDebugLog:[Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFa1qSDK$AFa1ySDK;

    return-object v0
.end method
