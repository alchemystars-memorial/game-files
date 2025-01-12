.class public Lnet/aihelp/data/event/SearchViewVisibilityChangeEvent;
.super Lnet/aihelp/core/util/bus/event/EventCenter;
.source "SearchViewVisibilityChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/util/bus/event/EventCenter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/event/EventCenter;-><init>(Ljava/lang/Object;)V

    return-void
.end method
