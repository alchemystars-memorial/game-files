.class public Lnet/aihelp/core/util/elva/parser/ContextParser;
.super Ljava/lang/Object;
.source "ContextParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;
    }
.end annotation


# instance fields
.field private context:Lnet/aihelp/core/util/elva/Context;

.field private final handler:Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;

.field private parser:Ljavax/xml/parsers/SAXParser;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;-><init>(Lnet/aihelp/core/util/elva/parser/ContextParser;Lnet/aihelp/core/util/elva/parser/ContextParser$1;)V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->handler:Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->parser:Ljavax/xml/parsers/SAXParser;

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/util/elva/parser/ContextParser;)Lnet/aihelp/core/util/elva/Context;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->context:Lnet/aihelp/core/util/elva/Context;

    return-object p0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/util/elva/Context;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/Context;-><init>()V

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/core/util/elva/parser/ContextParser;->parse(Lnet/aihelp/core/util/elva/Context;Ljava/io/InputStream;)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->context:Lnet/aihelp/core/util/elva/Context;

    return-object p1
.end method

.method public parse(Lnet/aihelp/core/util/elva/Context;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->context:Lnet/aihelp/core/util/elva/Context;

    iget-object p1, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v0, p0, Lnet/aihelp/core/util/elva/parser/ContextParser;->handler:Lnet/aihelp/core/util/elva/parser/ContextParser$ContextHandler;

    invoke-virtual {p1, p2, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method
