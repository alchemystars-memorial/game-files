.class public Lnet/aihelp/core/util/elva/ContextRandomSeedChangeListener;
.super Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;
.source "ContextRandomSeedChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "bot.randomSeed"

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/util/elva/Context;->random(J)V

    return-void
.end method
