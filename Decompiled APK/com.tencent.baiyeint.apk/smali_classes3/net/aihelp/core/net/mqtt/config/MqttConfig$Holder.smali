.class Lnet/aihelp/core/net/mqtt/config/MqttConfig$Holder;
.super Ljava/lang/Object;
.source "MqttConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/config/MqttConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/aihelp/core/net/mqtt/config/MqttConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;-><init>(Lnet/aihelp/core/net/mqtt/config/MqttConfig$1;)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/config/MqttConfig$Holder;->INSTANCE:Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/aihelp/core/net/mqtt/config/MqttConfig;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/config/MqttConfig$Holder;->INSTANCE:Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    return-object v0
.end method
