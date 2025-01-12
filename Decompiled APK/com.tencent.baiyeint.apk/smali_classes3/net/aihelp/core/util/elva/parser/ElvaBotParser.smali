.class public Lnet/aihelp/core/util/elva/parser/ElvaBotParser;
.super Ljava/lang/Object;
.source "ElvaBotParser.java"


# static fields
.field private static mapGraph:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/Graphmaster;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private aimlParser:Lnet/aihelp/core/util/elva/aiml/AIMLParser;

.field private appId:Ljava/lang/String;

.field private contParser:Lnet/aihelp/core/util/elva/parser/ContextParser;

.field private languageId:Ljava/lang/String;

.field private normParser:Lnet/aihelp/core/util/elva/parser/TransformationsParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->mapGraph:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lnet/aihelp/core/util/elva/aiml/AIMLParser;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/aiml/AIMLParser;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->aimlParser:Lnet/aihelp/core/util/elva/aiml/AIMLParser;

    new-instance v0, Lnet/aihelp/core/util/elva/parser/ContextParser;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/parser/ContextParser;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->contParser:Lnet/aihelp/core/util/elva/parser/ContextParser;

    new-instance v0, Lnet/aihelp/core/util/elva/parser/TransformationsParser;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/parser/TransformationsParser;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->normParser:Lnet/aihelp/core/util/elva/parser/TransformationsParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->appId:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->languageId:Ljava/lang/String;

    return-void
.end method

.method private newContext(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/util/elva/Context;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/Context;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->contParser:Lnet/aihelp/core/util/elva/parser/ContextParser;

    invoke-virtual {v1, v0, p1}, Lnet/aihelp/core/util/elva/parser/ContextParser;->parse(Lnet/aihelp/core/util/elva/Context;Ljava/io/InputStream;)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->normParser:Lnet/aihelp/core/util/elva/parser/TransformationsParser;

    invoke-virtual {p1, p2, p3}, Lnet/aihelp/core/util/elva/parser/TransformationsParser;->parse(Ljava/io/InputStream;Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/text/Transformations;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/Context;->setTransformations(Lnet/aihelp/core/util/elva/text/Transformations;)V

    return-object v0
.end method

.method private varargs newGraphmaster([Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/Graphmaster;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lnet/aihelp/core/util/elva/Graphmaster;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/Graphmaster;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->aimlParser:Lnet/aihelp/core/util/elva/aiml/AIMLParser;

    invoke-virtual {v1, v0, p1}, Lnet/aihelp/core/util/elva/aiml/AIMLParser;->parse(Lnet/aihelp/core/util/elva/Graphmaster;[Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static removeMapGraph(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->mapGraph:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public containsGraph()Z
    .locals 2

    sget-object v0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->mapGraph:Ljava/util/Map;

    iget-object v1, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->languageId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs parse(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;[Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/ElvaBot;
    .locals 7

    :try_start_0
    new-instance v6, Lnet/aihelp/core/util/elva/ElvaBot;

    invoke-direct {v6}, Lnet/aihelp/core/util/elva/ElvaBot;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->parse(Lnet/aihelp/core/util/elva/ElvaBot;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;[Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ElvaBot parse exception -> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs parse(Lnet/aihelp/core/util/elva/ElvaBot;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;[Ljava/io/InputStream;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->newContext(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/elva/ElvaBot;->setContext(Lnet/aihelp/core/util/elva/Context;)V

    sget-object p2, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->mapGraph:Ljava/util/Map;

    iget-object p3, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->appId:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sget-object p3, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->mapGraph:Ljava/util/Map;

    iget-object p4, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->appId:Ljava/lang/String;

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p3, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->languageId:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/aihelp/core/util/elva/Graphmaster;

    if-nez p3, :cond_1

    invoke-direct {p0, p5}, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->newGraphmaster([Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/Graphmaster;

    move-result-object p3

    iget-object p4, p0, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->languageId:Ljava/lang/String;

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p3}, Lnet/aihelp/core/util/elva/ElvaBot;->setGraphmaster(Lnet/aihelp/core/util/elva/Graphmaster;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
