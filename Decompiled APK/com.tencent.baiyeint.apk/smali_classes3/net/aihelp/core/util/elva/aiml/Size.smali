.class public Lnet/aihelp/core/util/elva/aiml/Size;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Size.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getCallback()Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/ElvaBot;->getGraphmaster()Lnet/aihelp/core/util/elva/Graphmaster;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Graphmaster;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "0"

    return-object p1
.end method
