.class public Lnet/aihelp/core/util/elva/aiml/Aiml;
.super Ljava/lang/Object;
.source "Aiml.java"

# interfaces
.implements Lnet/aihelp/core/util/elva/aiml/AIMLElement;


# instance fields
.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultTopic:Lnet/aihelp/core/util/elva/aiml/Topic;

.field private final topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Topic;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/util/elva/aiml/Topic;

    const/4 v1, 0x0

    new-array v2, v1, [Lnet/aihelp/core/util/elva/aiml/Category;

    const-string v3, "*"

    invoke-direct {v0, v3, v2}, Lnet/aihelp/core/util/elva/aiml/Topic;-><init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/aiml/Category;)V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->defaultTopic:Lnet/aihelp/core/util/elva/aiml/Topic;

    new-instance v2, Ljava/util/LinkedList;

    const/4 v3, 0x1

    new-array v3, v3, [Lnet/aihelp/core/util/elva/aiml/Topic;

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->topics:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->version:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Lnet/aihelp/core/util/elva/aiml/Category;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/util/elva/aiml/Topic;

    const/4 v1, 0x0

    new-array v2, v1, [Lnet/aihelp/core/util/elva/aiml/Category;

    const-string v3, "*"

    invoke-direct {v0, v3, v2}, Lnet/aihelp/core/util/elva/aiml/Topic;-><init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/aiml/Category;)V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->defaultTopic:Lnet/aihelp/core/util/elva/aiml/Topic;

    new-instance v2, Ljava/util/LinkedList;

    const/4 v3, 0x1

    new-array v3, v3, [Lnet/aihelp/core/util/elva/aiml/Topic;

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->topics:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V
    .locals 1

    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Category;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Category;

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->defaultTopic:Lnet/aihelp/core/util/elva/aiml/Topic;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/aiml/Category;->setTopic(Lnet/aihelp/core/util/elva/aiml/Topic;)V

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->defaultTopic:Lnet/aihelp/core/util/elva/aiml/Topic;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Topic;->appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Topic;

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->topics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Topic;->categories()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
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

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/aiml/Aiml;->appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public children()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Aiml;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Aiml;

    iget-object p1, p1, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Aiml;->categories:Ljava/util/List;

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
