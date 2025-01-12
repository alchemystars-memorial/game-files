.class public Lnet/aihelp/core/util/elva/aiml/Star;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Star.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lnet/aihelp/core/util/elva/aiml/Star;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Star;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    iget p1, p1, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    return v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/aihelp/core/util/elva/Match$Section;->PATTERN:Lnet/aihelp/core/util/elva/Match$Section;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/util/elva/Match;->wildcard(Lnet/aihelp/core/util/elva/Match$Section;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<star index=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/Star;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
