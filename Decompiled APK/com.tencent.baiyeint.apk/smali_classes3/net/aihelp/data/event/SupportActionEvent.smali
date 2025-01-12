.class public Lnet/aihelp/data/event/SupportActionEvent;
.super Lnet/aihelp/core/util/bus/event/EventCenter;
.source "SupportActionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/util/bus/event/EventCenter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSupportAction()I
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/util/bus/event/EventCenter;->getEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
