.class public Lnet/aihelp/core/util/elva/aiml/Thatstar;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Thatstar.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Thatstar;

    iget v0, p0, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

    iget p1, p1, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/aihelp/core/util/elva/Match$Section;->THAT:Lnet/aihelp/core/util/elva/Match$Section;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

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

    const-string v1, "<thatstar index=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/util/elva/aiml/Thatstar;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
