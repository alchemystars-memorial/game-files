.class public Lnet/aihelp/core/util/elva/ContextTopicChangeListener;
.super Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;
.source "ContextTopicChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "predicate.topic"

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Context;->getTransformations()Lnet/aihelp/core/util/elva/text/Transformations;

    move-result-object v2

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-direct {v1, v0}, Lnet/aihelp/core/util/elva/text/Sentence;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Lnet/aihelp/core/util/elva/text/Sentence;)V

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/elva/Context;->setTopic(Lnet/aihelp/core/util/elva/text/Sentence;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Lnet/aihelp/core/util/elva/text/Sentence;->ASTERISK:Lnet/aihelp/core/util/elva/text/Sentence;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/Context;->setTopic(Lnet/aihelp/core/util/elva/text/Sentence;)V

    :goto_2
    return-void
.end method
