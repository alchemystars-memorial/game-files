.class public Lnet/aihelp/core/util/elva/aiml/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Lnet/aihelp/core/util/elva/aiml/AIMLElement;


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Action;",
            ">;"
        }
    .end annotation
.end field

.field private alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

.field private pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private template:Lnet/aihelp/core/util/elva/aiml/Template;

.field private that:Lnet/aihelp/core/util/elva/aiml/That;

.field private topic:Lnet/aihelp/core/util/elva/aiml/Topic;

.field private url:Lnet/aihelp/core/util/elva/aiml/Url;

.field private url2:Lnet/aihelp/core/util/elva/aiml/Url2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lnet/aihelp/core/util/elva/aiml/Pattern;

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Pattern;-><init>(Ljava/lang/String;)V

    new-instance p1, Lnet/aihelp/core/util/elva/aiml/That;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "*"

    aput-object v3, v1, v2

    invoke-direct {p1, v1}, Lnet/aihelp/core/util/elva/aiml/That;-><init>([Ljava/lang/Object;)V

    new-instance v1, Lnet/aihelp/core/util/elva/aiml/Topic;

    new-array v2, v2, [Lnet/aihelp/core/util/elva/aiml/Category;

    invoke-direct {v1, v3, v2}, Lnet/aihelp/core/util/elva/aiml/Topic;-><init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/aiml/Category;)V

    new-instance v2, Lnet/aihelp/core/util/elva/aiml/Template;

    invoke-direct {v2, p2}, Lnet/aihelp/core/util/elva/aiml/Template;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, v1, v2}, Lnet/aihelp/core/util/elva/aiml/Category;-><init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Topic;Lnet/aihelp/core/util/elva/aiml/Template;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/Template;)V
    .locals 4

    new-instance v0, Lnet/aihelp/core/util/elva/aiml/That;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "*"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/elva/aiml/That;-><init>([Ljava/lang/Object;)V

    new-instance v1, Lnet/aihelp/core/util/elva/aiml/Topic;

    new-array v2, v2, [Lnet/aihelp/core/util/elva/aiml/Category;

    invoke-direct {v1, v3, v2}, Lnet/aihelp/core/util/elva/aiml/Topic;-><init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/aiml/Category;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/aihelp/core/util/elva/aiml/Category;-><init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Topic;Lnet/aihelp/core/util/elva/aiml/Template;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Template;)V
    .locals 3

    new-instance v0, Lnet/aihelp/core/util/elva/aiml/Topic;

    const/4 v1, 0x0

    new-array v1, v1, [Lnet/aihelp/core/util/elva/aiml/Category;

    const-string v2, "*"

    invoke-direct {v0, v2, v1}, Lnet/aihelp/core/util/elva/aiml/Topic;-><init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/aiml/Category;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/aihelp/core/util/elva/aiml/Category;-><init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Topic;Lnet/aihelp/core/util/elva/aiml/Template;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Topic;Lnet/aihelp/core/util/elva/aiml/Template;)V
    .locals 10

    new-instance v5, Lnet/aihelp/core/util/elva/aiml/Url;

    invoke-direct {v5}, Lnet/aihelp/core/util/elva/aiml/Url;-><init>()V

    new-instance v6, Lnet/aihelp/core/util/elva/aiml/Url2;

    invoke-direct {v6}, Lnet/aihelp/core/util/elva/aiml/Url2;-><init>()V

    new-instance v7, Lnet/aihelp/core/util/elva/aiml/Alicekm;

    invoke-direct {v7}, Lnet/aihelp/core/util/elva/aiml/Alicekm;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    new-array v9, v0, [Lnet/aihelp/core/util/elva/aiml/Action;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lnet/aihelp/core/util/elva/aiml/Category;-><init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Topic;Lnet/aihelp/core/util/elva/aiml/Template;Lnet/aihelp/core/util/elva/aiml/Url;Lnet/aihelp/core/util/elva/aiml/Url2;Lnet/aihelp/core/util/elva/aiml/Alicekm;Ljava/util/List;[Lnet/aihelp/core/util/elva/aiml/Action;)V

    return-void
.end method

.method public varargs constructor <init>(Lnet/aihelp/core/util/elva/aiml/Pattern;Lnet/aihelp/core/util/elva/aiml/That;Lnet/aihelp/core/util/elva/aiml/Topic;Lnet/aihelp/core/util/elva/aiml/Template;Lnet/aihelp/core/util/elva/aiml/Url;Lnet/aihelp/core/util/elva/aiml/Url2;Lnet/aihelp/core/util/elva/aiml/Alicekm;Ljava/util/List;[Lnet/aihelp/core/util/elva/aiml/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/util/elva/aiml/Pattern;",
            "Lnet/aihelp/core/util/elva/aiml/That;",
            "Lnet/aihelp/core/util/elva/aiml/Topic;",
            "Lnet/aihelp/core/util/elva/aiml/Template;",
            "Lnet/aihelp/core/util/elva/aiml/Url;",
            "Lnet/aihelp/core/util/elva/aiml/Url2;",
            "Lnet/aihelp/core/util/elva/aiml/Alicekm;",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Tag;",
            ">;[",
            "Lnet/aihelp/core/util/elva/aiml/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    iput-object p4, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    iput-object p2, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    iput-object p3, p0, Lnet/aihelp/core/util/elva/aiml/Category;->topic:Lnet/aihelp/core/util/elva/aiml/Topic;

    iput-object p5, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    iput-object p6, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    iput-object p7, p0, Lnet/aihelp/core/util/elva/aiml/Category;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    array-length p1, p9

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p9, p2

    iget-object p4, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/core/util/elva/aiml/Tag;

    iget-object p3, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    return-void
.end method


# virtual methods
.method public appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V
    .locals 1

    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Pattern;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Pattern;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/That;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/That;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Url;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Url;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Url2;

    if-eqz v0, :cond_3

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Url2;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Action;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Action;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Tag;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Tag;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Alicekm;

    if-eqz v0, :cond_6

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Alicekm;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/Template;

    if-eqz v0, :cond_7

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Template;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    :cond_7
    :goto_0
    return-void
.end method

.method public appendChildren(Ljava/util/List;)V
    .locals 3
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

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/aiml/Category;->appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    if-nez p1, :cond_1

    new-instance p1, Lnet/aihelp/core/util/elva/aiml/That;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/elva/aiml/That;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lnet/aihelp/core/util/elva/aiml/Category;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Category;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    invoke-virtual {v1, v2}, Lnet/aihelp/core/util/elva/aiml/Pattern;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    invoke-virtual {v1, v2}, Lnet/aihelp/core/util/elva/aiml/Template;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    iget-object p1, p1, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    invoke-virtual {v1, p1}, Lnet/aihelp/core/util/elva/aiml/That;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAlicekm()Lnet/aihelp/core/util/elva/aiml/Alicekm;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    return-object v0
.end method

.method public getMatchPath()[Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/aiml/Pattern;->getElements()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/aiml/That;->elements()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/util/elva/aiml/Category;->topic:Lnet/aihelp/core/util/elva/aiml/Topic;

    invoke-virtual {v2}, Lnet/aihelp/core/util/elva/aiml/Topic;->elements()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    array-length v4, v1

    array-length v5, v2

    add-int/lit8 v6, v3, 0x1

    add-int v7, v6, v4

    add-int/lit8 v8, v7, 0x1

    add-int v9, v8, v5

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "<THAT>"

    aput-object v10, v9, v3

    const-string v10, "<TOPIC>"

    aput-object v10, v9, v7

    const/4 v7, 0x0

    invoke-static {v0, v7, v9, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v7, v9, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v7, v9, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v9
.end method

.method public getPattern()Lnet/aihelp/core/util/elva/aiml/Pattern;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTemplate()Lnet/aihelp/core/util/elva/aiml/Template;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    return-object v0
.end method

.method public getThat()Lnet/aihelp/core/util/elva/aiml/That;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    return-object v0
.end method

.method public getTopic()Lnet/aihelp/core/util/elva/aiml/Topic;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->topic:Lnet/aihelp/core/util/elva/aiml/Topic;

    return-object v0
.end method

.method public getUrl()Lnet/aihelp/core/util/elva/aiml/Url;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    return-object v0
.end method

.method public getUrl2()Lnet/aihelp/core/util/elva/aiml/Url2;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    return-object v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Url;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Url2;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/aiml/Template;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setPattern(Lnet/aihelp/core/util/elva/aiml/Pattern;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    return-void
.end method

.method public setTemplate(Lnet/aihelp/core/util/elva/aiml/Template;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    return-void
.end method

.method public setThat(Lnet/aihelp/core/util/elva/aiml/That;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    return-void
.end method

.method public setTopic(Lnet/aihelp/core/util/elva/aiml/Topic;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->topic:Lnet/aihelp/core/util/elva/aiml/Topic;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/aiml/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/util/elva/aiml/Category;->that:Lnet/aihelp/core/util/elva/aiml/That;

    invoke-virtual {v2}, Lnet/aihelp/core/util/elva/aiml/That;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/Category;->template:Lnet/aihelp/core/util/elva/aiml/Template;

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/aiml/Template;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
