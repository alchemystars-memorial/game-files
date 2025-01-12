.class public Lnet/aihelp/core/util/elva/aiml/Condition;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Condition.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p3}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->name:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->name:Ljava/lang/String;

    const-string v0, "value"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->value:Ljava/lang/String;

    return-void
.end method

.method private find(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations;)Lnet/aihelp/core/util/elva/aiml/Li;
    .locals 5

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/aiml/Condition;->getChildren()[Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    check-cast v3, Lnet/aihelp/core/util/elva/aiml/Li;

    invoke-virtual {v3}, Lnet/aihelp/core/util/elva/aiml/Li;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p2, v4}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private find(Lnet/aihelp/core/util/elva/Context;Lnet/aihelp/core/util/elva/text/Transformations;)Lnet/aihelp/core/util/elva/aiml/Li;
    .locals 7

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/aiml/Condition;->getChildren()[Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    check-cast v3, Lnet/aihelp/core/util/elva/aiml/Li;

    invoke-virtual {v3}, Lnet/aihelp/core/util/elva/aiml/Li;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "predicate."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/aihelp/core/util/elva/aiml/Li;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v4}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->value:Ljava/lang/String;

    return-object v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getCallback()Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/ElvaBot;->getContext()Lnet/aihelp/core/util/elva/Context;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/Context;->getTransformations()Lnet/aihelp/core/util/elva/text/Transformations;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "predicate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->value:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    iget-object v3, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1}, Lnet/aihelp/core/util/elva/aiml/Condition;->find(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations;)Lnet/aihelp/core/util/elva/aiml/Li;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Li;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    return-object v4

    :cond_3
    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/util/elva/aiml/Condition;->find(Lnet/aihelp/core/util/elva/Context;Lnet/aihelp/core/util/elva/text/Transformations;)Lnet/aihelp/core/util/elva/aiml/Li;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Li;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    return-object v4
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Condition;->value:Ljava/lang/String;

    return-void
.end method
