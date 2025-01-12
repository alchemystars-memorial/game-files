.class public Lnet/aihelp/data/event/PageHoppingEvent;
.super Lnet/aihelp/core/util/bus/event/EventCenter;
.source "PageHoppingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/util/bus/event/EventCenter<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>(ILjava/lang/Object;)V

    return-void
.end method
