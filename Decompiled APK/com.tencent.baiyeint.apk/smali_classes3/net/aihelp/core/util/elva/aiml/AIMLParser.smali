.class public Lnet/aihelp/core/util/elva/aiml/AIMLParser;
.super Ljava/lang/Object;
.source "AIMLParser.java"


# instance fields
.field private final handler:Lnet/aihelp/core/util/elva/aiml/AIMLHandler;

.field private parser:Ljavax/xml/parsers/SAXParser;

.field private final searcher:Lnet/aihelp/core/util/elva/util/Searcher;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/core/util/elva/aiml/AIMLParserConfigurationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/util/elva/util/Searcher;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/util/Searcher;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->searcher:Lnet/aihelp/core/util/elva/util/Searcher;

    new-instance v0, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->handler:Lnet/aihelp/core/util/elva/aiml/AIMLHandler;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->parser:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/aihelp/core/util/elva/aiml/AIMLParserConfigurationException;

    invoke-direct {v1, v0}, Lnet/aihelp/core/util/elva/aiml/AIMLParserConfigurationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public varargs parse(Lnet/aihelp/core/util/elva/Graphmaster;[Ljava/io/InputStream;)V
    .locals 5

    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->parser:Ljavax/xml/parsers/SAXParser;

    iget-object v4, p0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->handler:Lnet/aihelp/core/util/elva/aiml/AIMLHandler;

    invoke-virtual {v3, v2, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->handler:Lnet/aihelp/core/util/elva/aiml/AIMLHandler;

    invoke-virtual {p2}, Lnet/aihelp/core/util/elva/aiml/AIMLHandler;->unload()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/elva/Graphmaster;->append(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
