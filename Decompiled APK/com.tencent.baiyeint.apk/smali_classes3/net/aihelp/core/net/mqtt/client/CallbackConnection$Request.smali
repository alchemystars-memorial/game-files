.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;
.super Ljava/lang/Object;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field private final cb:Lnet/aihelp/core/net/mqtt/client/Callback;

.field private final frame:Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

.field private final id:S


# direct methods
.method constructor <init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short p1, p1

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->id:S

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->cb:Lnet/aihelp/core/net/mqtt/client/Callback;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->frame:Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-void
.end method

.method static synthetic access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->cb:Lnet/aihelp/core/net/mqtt/client/Callback;

    return-object p0
.end method

.method static synthetic access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S
    .locals 0

    iget-short p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->id:S

    return p0
.end method

.method static synthetic access$600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->frame:Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-object p0
.end method
