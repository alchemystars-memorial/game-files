.class public Lnet/aihelp/core/util/elva/aiml/Topic;
.super Ljava/lang/Object;
.source "Topic.java"

# interfaces
.implements Lnet/aihelp/core/util/elva/aiml/AIMLElement;


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/aiml/Category;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/Topic;->name(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/Topic;->name(Ljava/lang/String;)V

    return-void
.end method

.method private name(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V
    .locals 1

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Category;

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/elva/aiml/Category;->setTopic(Lnet/aihelp/core/util/elva/aiml/Topic;)V

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendChildren(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/AIMLElement;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/aiml/AIMLElement;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/aiml/Topic;->appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public categories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    return-object v0
.end method

.method public elements()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->name:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lnet/aihelp/core/util/elva/aiml/Topic;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Topic;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->name:Ljava/lang/String;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/aiml/Topic;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    iget-object p1, p1, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Topic;->categories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/util/elva/aiml/Category;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
