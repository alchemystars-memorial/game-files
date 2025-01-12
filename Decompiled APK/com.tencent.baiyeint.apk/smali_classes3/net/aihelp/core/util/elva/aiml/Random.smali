.class public Lnet/aihelp/core/util/elva/aiml/Random;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Random.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getCallback()Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/ElvaBot;->getContext()Lnet/aihelp/core/util/elva/Context;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/Context;->random()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/aiml/Random;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/aiml/Random;->getChildren(I)Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
