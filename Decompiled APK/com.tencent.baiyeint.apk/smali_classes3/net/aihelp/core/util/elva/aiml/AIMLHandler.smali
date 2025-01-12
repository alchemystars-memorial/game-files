.class public Lnet/aihelp/core/util/elva/aiml/AIMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AIMLHandler.java"


# instance fields
.field private ignoreWhitespace:Z

.field private final ignored:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

.field final text:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignored:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignoreWhitespace:Z

    new-instance v1, Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    invoke-direct {v1}, Lnet/aihelp/core/util/elva/aiml/AIMLStack;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private buildClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.aihelp.core.util.elva.aiml."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private pushTextNode(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lnet/aihelp/core/util/elva/util/ParseUtil;->blankSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean p1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignoreWhitespace:Z

    if-eqz p1, :cond_1

    const-string p1, "[ ]{2,}"

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    new-instance v1, Lnet/aihelp/core/util/elva/aiml/Text;

    invoke-direct {v1, v0}, Lnet/aihelp/core/util/elva/aiml/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->push(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateIgnoreWhitespace(Lorg/xml/sax/Attributes;)V
    .locals 2

    :try_start_0
    const-string v0, "preserve"

    const-string v1, "xml:space"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignoreWhitespace:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignored:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lnet/aihelp/core/util/elva/util/ParseUtil;->needBlankSplit(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->pushTextNode(Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignoreWhitespace:Z

    invoke-direct {p0, p3}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->buildClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->pop()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    check-cast v0, Lnet/aihelp/core/util/elva/aiml/AIMLElement;

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v0

    check-cast v1, Lnet/aihelp/core/util/elva/aiml/AIMLElement;

    invoke-interface {v1, p2}, Lnet/aihelp/core/util/elva/aiml/AIMLElement;->appendChildren(Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->push(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching start tag found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->ignored:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p4}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->updateIgnoreWhitespace(Lorg/xml/sax/Attributes;)V

    invoke-static {p3}, Lnet/aihelp/core/util/elva/util/ParseUtil;->needBlankSplit(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->pushTextNode(Ljava/lang/Boolean;)V

    invoke-direct {p0, p3}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->buildClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Class;

    const-class v0, Lorg/xml/sax/Attributes;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->push(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Category;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->stack:Lnet/aihelp/core/util/elva/aiml/AIMLStack;

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->pop()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lnet/aihelp/core/util/elva/aiml/Aiml;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/aihelp/core/util/elva/aiml/Aiml;

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/aiml/Aiml;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
