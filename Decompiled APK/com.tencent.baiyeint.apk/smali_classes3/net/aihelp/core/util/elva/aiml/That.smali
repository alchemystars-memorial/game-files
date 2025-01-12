.class public Lnet/aihelp/core/util/elva/aiml/That;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "That.java"


# static fields
.field private static final STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private responseIndex:I

.field private sentenceIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lnet/aihelp/core/util/elva/aiml/That;->STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    iput p2, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    iput v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    array-length v0, p1

    if-le v0, v1, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    return-void
.end method


# virtual methods
.method public elements()[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/aiml/That;->getChildren()[Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    sget-object v0, Lnet/aihelp/core/util/elva/aiml/That;->STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lnet/aihelp/core/util/elva/aiml/That;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/That;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    iget v2, p1, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    iget p1, p1, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getCallback()Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/ElvaBot;->getContext()Lnet/aihelp/core/util/elva/Context;

    move-result-object p1

    iget v0, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/Context;->getResponses(I)Lnet/aihelp/core/util/elva/text/Response;

    move-result-object p1

    iget v0, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Response;->getSentences(I)Lnet/aihelp/core/util/elva/text/Sentence;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Sentence;->trimOriginal()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/aiml/That;->children()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<that index=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->responseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/That;->sentenceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<that>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/aiml/That;->children()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "</that>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
