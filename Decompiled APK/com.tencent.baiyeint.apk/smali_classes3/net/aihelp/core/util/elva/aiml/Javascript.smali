.class public Lnet/aihelp/core/util/elva/aiml/Javascript;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Javascript.java"


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 4

    const-string v0, "result"

    :try_start_0
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getCallback()Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/ElvaBot;->getContext()Lnet/aihelp/core/util/elva/Context;

    move-result-object v1

    const-string v2, "javascript.interpreter"

    invoke-virtual {v1, v2}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/util/elva/script/Interpreter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lnet/aihelp/core/util/elva/script/Interpreter;->variable(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lnet/aihelp/core/util/elva/script/Interpreter;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v0}, Lnet/aihelp/core/util/elva/script/Interpreter;->variable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Evaluation error on <javascript> tag"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
