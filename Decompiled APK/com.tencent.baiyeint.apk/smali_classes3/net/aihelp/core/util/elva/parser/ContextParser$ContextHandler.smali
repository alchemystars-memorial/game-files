.class Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ContextParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/elva/parser/ContextParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/elva/parser/ContextParser;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/util/elva/parser/ContextParser;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;->this$0:Lnet/aihelp/core/util/elva/parser/ContextParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/util/elva/parser/ContextParser;Lnet/aihelp/core/util/elva/parser/ContextParser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;-><init>(Lnet/aihelp/core/util/elva/parser/ContextParser;)V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "set"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "value"

    const-string v0, "name"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;->this$0:Lnet/aihelp/core/util/elva/parser/ContextParser;

    invoke-static {p1}, Lnet/aihelp/core/util/elva/parser/ContextParser;->access$100(Lnet/aihelp/core/util/elva/parser/ContextParser;)Lnet/aihelp/core/util/elva/Context;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "predicate."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "bot"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;->this$0:Lnet/aihelp/core/util/elva/parser/ContextParser;

    invoke-static {p1}, Lnet/aihelp/core/util/elva/parser/ContextParser;->access$100(Lnet/aihelp/core/util/elva/parser/ContextParser;)Lnet/aihelp/core/util/elva/Context;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bot."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
