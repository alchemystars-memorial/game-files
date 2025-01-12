.class final Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$1;
.super Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;
.source "ServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;-><init>()V

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
