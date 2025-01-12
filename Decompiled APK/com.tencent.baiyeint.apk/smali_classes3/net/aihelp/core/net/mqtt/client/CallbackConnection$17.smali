.class synthetic Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;
.super Ljava/lang/Object;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$aihelp$core$net$mqtt$client$QoS:[I

.field static final synthetic $SwitchMap$net$aihelp$core$net$mqtt$codec$CONNACK$Code:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;->$SwitchMap$net$aihelp$core$net$mqtt$client$QoS:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_LEAST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/client/QoS;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;->$SwitchMap$net$aihelp$core$net$mqtt$client$QoS:[I

    sget-object v2, Lnet/aihelp/core/net/mqtt/client/QoS;->EXACTLY_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/client/QoS;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;->$SwitchMap$net$aihelp$core$net$mqtt$client$QoS:[I

    sget-object v2, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/client/QoS;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->values()[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;->$SwitchMap$net$aihelp$core$net$mqtt$codec$CONNACK$Code:[I

    :try_start_3
    sget-object v2, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_ACCEPTED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
