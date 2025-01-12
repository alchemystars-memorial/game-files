.class final Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$OneWay;
.super Ljava/lang/Object;
.source "PipeTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OneWay"
.end annotation


# instance fields
.field final command:Ljava/lang/Object;

.field final retained:Lnet/aihelp/core/net/mqtt/hawtdispatch/Retained;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lnet/aihelp/core/net/mqtt/hawtdispatch/Retained;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$OneWay;->command:Ljava/lang/Object;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$OneWay;->retained:Lnet/aihelp/core/net/mqtt/hawtdispatch/Retained;

    return-void
.end method
