.class public Lnet/aihelp/core/util/elva/Graphmaster;
.super Ljava/lang/Object;
.source "Graphmaster.java"


# instance fields
.field private category:Lnet/aihelp/core/util/elva/aiml/Category;

.field private final children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/Graphmaster;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parent:Lnet/aihelp/core/util/elva/Graphmaster;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->size:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->size:I

    iput-object p1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->size:I

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/Graphmaster;->append(Ljava/util/List;)V

    return-void
.end method

.method private append(Lnet/aihelp/core/util/elva/aiml/Category;[Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    aget-object v1, p2, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/Graphmaster;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/util/elva/Graphmaster;

    aget-object v1, p2, p3

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/elva/Graphmaster;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/Graphmaster;->appendChild(Lnet/aihelp/core/util/elva/Graphmaster;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    array-length v1, p2

    if-gt v1, p3, :cond_1

    iput-object p1, v0, Lnet/aihelp/core/util/elva/Graphmaster;->category:Lnet/aihelp/core/util/elva/aiml/Category;

    goto :goto_0

    :cond_1
    invoke-direct {v0, p1, p2, p3}, Lnet/aihelp/core/util/elva/Graphmaster;->append(Lnet/aihelp/core/util/elva/aiml/Category;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private appendChild(Lnet/aihelp/core/util/elva/Graphmaster;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    iget-object v1, p1, Lnet/aihelp/core/util/elva/Graphmaster;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, p1, Lnet/aihelp/core/util/elva/Graphmaster;->parent:Lnet/aihelp/core/util/elva/Graphmaster;

    return-void
.end method

.method private children(Ljava/lang/String;)[Lnet/aihelp/core/util/elva/Graphmaster;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/aihelp/core/util/elva/Graphmaster;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    const-string v2, "_"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/util/elva/Graphmaster;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/util/elva/Graphmaster;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->children:Ljava/util/Map;

    const-string v1, "*"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/util/elva/Graphmaster;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object v0
.end method

.method private isWildcard()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->name:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->name:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private match(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/util/elva/Graphmaster;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/elva/Graphmaster;->matchWildcard(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/elva/Match;->getMatchPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getMatchPathLength()I

    move-result v0

    if-gt v0, p2, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->category:Lnet/aihelp/core/util/elva/aiml/Category;

    return-object p1

    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/elva/Graphmaster;->matchChildren(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;

    move-result-object p1

    return-object p1
.end method

.method private matchChildren(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;
    .locals 5

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/elva/Match;->getMatchPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/Graphmaster;->children(Ljava/lang/String;)[Lnet/aihelp/core/util/elva/Graphmaster;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {v4, p1, p2}, Lnet/aihelp/core/util/elva/Graphmaster;->match(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private matchWildcard(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;
    .locals 3

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getMatchPathLength()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, p1, v1}, Lnet/aihelp/core/util/elva/Graphmaster;->matchChildren(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2, v1}, Lnet/aihelp/core/util/elva/Match;->appendWildcard(II)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->category:Lnet/aihelp/core/util/elva/aiml/Category;

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/core/util/elva/Match;->appendWildcard(II)V

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->category:Lnet/aihelp/core/util/elva/aiml/Category;

    return-object p1
.end method


# virtual methods
.method public append(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
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

    check-cast v0, Lnet/aihelp/core/util/elva/aiml/Category;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/Graphmaster;->append(Lnet/aihelp/core/util/elva/aiml/Category;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public append(Lnet/aihelp/core/util/elva/aiml/Category;)V
    .locals 2

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getMatchPath()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/aihelp/core/util/elva/Graphmaster;->append(Lnet/aihelp/core/util/elva/aiml/Category;[Ljava/lang/String;I)V

    iget p1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/aihelp/core/util/elva/Graphmaster;->size:I

    return-void
.end method

.method public match(Lnet/aihelp/core/util/elva/Match;)Lnet/aihelp/core/util/elva/aiml/Category;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/util/elva/Graphmaster;->matchChildren(Lnet/aihelp/core/util/elva/Match;I)Lnet/aihelp/core/util/elva/aiml/Category;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/util/elva/Graphmaster;->size:I

    return v0
.end method
