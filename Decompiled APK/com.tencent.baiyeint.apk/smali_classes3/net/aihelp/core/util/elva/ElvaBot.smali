.class public Lnet/aihelp/core/util/elva/ElvaBot;
.super Ljava/lang/Object;
.source "ElvaBot.java"


# instance fields
.field private context:Lnet/aihelp/core/util/elva/Context;

.field private graphmaster:Lnet/aihelp/core/util/elva/Graphmaster;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/Context;Lnet/aihelp/core/util/elva/Graphmaster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/ElvaBot;->setContext(Lnet/aihelp/core/util/elva/Context;)V

    invoke-virtual {p0, p2}, Lnet/aihelp/core/util/elva/ElvaBot;->setGraphmaster(Lnet/aihelp/core/util/elva/Graphmaster;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/Graphmaster;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/util/elva/Context;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/Context;-><init>()V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/ElvaBot;->setContext(Lnet/aihelp/core/util/elva/Context;)V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/ElvaBot;->setGraphmaster(Lnet/aihelp/core/util/elva/Graphmaster;)V

    return-void
.end method

.method private respond(Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Response;)V
    .locals 1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Sentence;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lnet/aihelp/core/util/elva/Match;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/aihelp/core/util/elva/Match;-><init>(Lnet/aihelp/core/util/elva/ElvaBot;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/ElvaBot;->graphmaster:Lnet/aihelp/core/util/elva/Graphmaster;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/Graphmaster;->match(Lnet/aihelp/core/util/elva/Match;)Lnet/aihelp/core/util/elva/aiml/Category;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/aiml/Category;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lnet/aihelp/core/util/elva/text/Response;->append(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getUrl()Lnet/aihelp/core/util/elva/aiml/Url;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getUrl()Lnet/aihelp/core/util/elva/aiml/Url;

    move-result-object p2

    iput-object p2, p4, Lnet/aihelp/core/util/elva/text/Response;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getUrl2()Lnet/aihelp/core/util/elva/aiml/Url2;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getUrl2()Lnet/aihelp/core/util/elva/aiml/Url2;

    move-result-object p2

    iput-object p2, p4, Lnet/aihelp/core/util/elva/text/Response;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getAlicekm()Lnet/aihelp/core/util/elva/aiml/Alicekm;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getAlicekm()Lnet/aihelp/core/util/elva/aiml/Alicekm;

    move-result-object p2

    iput-object p2, p4, Lnet/aihelp/core/util/elva/text/Response;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    :cond_2
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getPattern()Lnet/aihelp/core/util/elva/aiml/Pattern;

    move-result-object p2

    iput-object p2, p4, Lnet/aihelp/core/util/elva/text/Response;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getActions()Ljava/util/List;

    move-result-object p2

    iput-object p2, p4, Lnet/aihelp/core/util/elva/text/Response;->Actions:Ljava/util/List;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/aiml/Category;->getTags()Ljava/util/List;

    move-result-object p1

    iput-object p1, p4, Lnet/aihelp/core/util/elva/text/Response;->tags:Ljava/util/List;

    :cond_3
    return-void
.end method


# virtual methods
.method public getContext()Lnet/aihelp/core/util/elva/Context;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    return-object v0
.end method

.method public getGraphmaster()Lnet/aihelp/core/util/elva/Graphmaster;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/ElvaBot;->graphmaster:Lnet/aihelp/core/util/elva/Graphmaster;

    return-object v0
.end method

.method public respond(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/elva/text/Request;

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/elva/text/Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/ElvaBot;->respond(Lnet/aihelp/core/util/elva/text/Request;)Lnet/aihelp/core/util/elva/text/Response;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Response;->trimOriginal()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public respond(Lnet/aihelp/core/util/elva/text/Request;)Lnet/aihelp/core/util/elva/text/Response;
    .locals 6

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Request;->getOriginal()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/Context;->getThat()Lnet/aihelp/core/util/elva/text/Sentence;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/Context;->getTopic()Lnet/aihelp/core/util/elva/text/Sentence;

    move-result-object v1

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/ElvaBot;->transformations()Lnet/aihelp/core/util/elva/text/Transformations;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Lnet/aihelp/core/util/elva/text/Request;)V

    iget-object v2, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {v2, p1}, Lnet/aihelp/core/util/elva/Context;->appendRequest(Lnet/aihelp/core/util/elva/text/Request;)V

    new-instance v2, Lnet/aihelp/core/util/elva/text/Response;

    invoke-direct {v2}, Lnet/aihelp/core/util/elva/text/Response;-><init>()V

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Request;->getSentences()[Lnet/aihelp/core/util/elva/text/Sentence;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-direct {p0, v5, v0, v1, v2}, Lnet/aihelp/core/util/elva/ElvaBot;->respond(Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Sentence;Lnet/aihelp/core/util/elva/text/Response;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {p1, v2}, Lnet/aihelp/core/util/elva/Context;->appendResponse(Lnet/aihelp/core/util/elva/text/Response;)V

    return-object v2

    :cond_2
    :goto_1
    new-instance p1, Lnet/aihelp/core/util/elva/text/Response;

    invoke-direct {p1, v1}, Lnet/aihelp/core/util/elva/text/Response;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public respondXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lnet/aihelp/core/util/elva/text/Request;

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/elva/text/Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/ElvaBot;->respond(Lnet/aihelp/core/util/elva/text/Request;)Lnet/aihelp/core/util/elva/text/Response;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Response;->trimOriginal()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<msgs><msg>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    const-string v3, "&amp;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">"

    const-string v3, "&gt;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, "&quot;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    const-string v3, "&apos;"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</msg>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->url:Lnet/aihelp/core/util/elva/aiml/Url;

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/elva/aiml/Url;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->url2:Lnet/aihelp/core/util/elva/aiml/Url2;

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/elva/aiml/Url2;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/elva/aiml/Alicekm;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->Actions:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->Actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "<actions>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    :goto_0
    iget-object v5, p1, Lnet/aihelp/core/util/elva/text/Response;->Actions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    const-string v5, "<action>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lnet/aihelp/core/util/elva/text/Response;->Actions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/aihelp/core/util/elva/aiml/Action;

    invoke-virtual {v5, v2}, Lnet/aihelp/core/util/elva/aiml/Action;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</action>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->Actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "<action\n\t\t\tname=\"\"\n\t\t\treply=\"\"></action>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "</actions>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->tags:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "<tags>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    const-string v0, "<tag>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lnet/aihelp/core/util/elva/text/Response;->tags:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/aiml/Tag;

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/elva/aiml/Tag;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</tag>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p1, Lnet/aihelp/core/util/elva/text/Response;->tags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_7

    const-string p1, "<tag\n\t\t\tname=\"\"\n\t\t\tid=\"\"></tag>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p1, "</tags>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string p1, "</msgs>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public response(Ljava/lang/String;)Lnet/aihelp/core/util/elva/text/Response;
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/elva/text/Request;

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/elva/text/Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/ElvaBot;->respond(Lnet/aihelp/core/util/elva/text/Request;)Lnet/aihelp/core/util/elva/text/Response;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Lnet/aihelp/core/util/elva/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    return-void
.end method

.method public setGraphmaster(Lnet/aihelp/core/util/elva/Graphmaster;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/ElvaBot;->graphmaster:Lnet/aihelp/core/util/elva/Graphmaster;

    return-void
.end method

.method public transformations()Lnet/aihelp/core/util/elva/text/Transformations;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/ElvaBot;->context:Lnet/aihelp/core/util/elva/Context;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/Context;->getTransformations()Lnet/aihelp/core/util/elva/text/Transformations;

    move-result-object v0

    return-object v0
.end method
