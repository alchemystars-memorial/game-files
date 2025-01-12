.class public Lnet/aihelp/core/util/elva/aiml/Sr;
.super Lnet/aihelp/core/util/elva/aiml/Srai;
.source "Sr.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/Srai;-><init>(Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    new-instance v1, Lnet/aihelp/core/util/elva/aiml/Star;

    invoke-direct {v1, p1}, Lnet/aihelp/core/util/elva/aiml/Star;-><init>(Lorg/xml/sax/Attributes;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/aiml/Sr;->setChildren([Lnet/aihelp/core/util/elva/aiml/TemplateElement;)V

    return-void
.end method
