.class public Lnet/aihelp/core/util/elva/text/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/elva/text/Transformations$Mapper;
    }
.end annotation


# static fields
.field private static final INTEGER_ARRAY:[Ljava/lang/Integer;


# instance fields
.field private correction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fitting:Ljava/util/regex/Pattern;

.field private gender:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation
.end field

.field private person:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation
.end field

.field private person2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation
.end field

.field private protection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final splitter:Lnet/aihelp/core/util/elva/text/SentenceSplitter;

.field private final tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

.field private final wordBreakers:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lnet/aihelp/core/util/elva/text/Transformations;->INTEGER_ARRAY:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lnet/aihelp/core/util/elva/text/Tokenizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lnet/aihelp/core/util/elva/text/Tokenizer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[^A-Z0-9\\u4E00-\\u9FA5\\u3040-\\u31FE\\u0400-\\u04FF\\u0E00-\\u0E7F\\uAC00-\\uD7AF\\u0600-\\u06FF\\u0080-\\u00FF\\u0100-\\u017F\\u0B80-\\u0BFF\\u0370-\\u03FF\\u1000-\\u109F\\u1780-\\u17FF]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->fitting:Ljava/util/regex/Pattern;

    const-string v0, "([,;:])([A-Za-z]|[ \\s]{2,})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->wordBreakers:Ljava/util/regex/Pattern;

    iput-object p3, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    new-instance p3, Lnet/aihelp/core/util/elva/text/SentenceSplitter;

    const-string v0, "protection"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p3, v0, p1}, Lnet/aihelp/core/util/elva/text/SentenceSplitter;-><init>(Ljava/util/Map;Ljava/util/List;)V

    iput-object p3, p0, Lnet/aihelp/core/util/elva/text/Transformations;->splitter:Lnet/aihelp/core/util/elva/text/SentenceSplitter;

    const-string p1, "correction"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/elva/text/Transformations;->INTEGER_ARRAY:[Ljava/lang/Integer;

    return-object v0
.end method

.method private breakWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->wordBreakers:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->fitting:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fit(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->fitting:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p2, p1, v2, v3}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p2, v2}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->update(I)V

    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private newSubstitutionList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    invoke-direct {v2, v3, v1, v4}, Lnet/aihelp/core/util/elva/text/Substitution;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Tokenizer;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private substitute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x42

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget-object v2, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private substitute(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x42

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iget-object v4, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, p1, v2, v4}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->update(I)V

    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private transform(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/text/Tokenizer;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-virtual {v2, v0, p1}, Lnet/aihelp/core/util/elva/text/Substitution;->substitute(ILjava/util/List;)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/elva/text/Tokenizer;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public normalization(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ ]{2,}"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->substitute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->fit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public normalization(Lnet/aihelp/core/util/elva/text/Request;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Request;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ]{2,}"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Transformations;->splitter:Lnet/aihelp/core/util/elva/text/SentenceSplitter;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/util/elva/text/SentenceSplitter;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lnet/aihelp/core/util/elva/text/Sentence;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    new-instance v5, Lnet/aihelp/core/util/elva/text/Sentence;

    aget-object v6, v1, v4

    invoke-direct {v5, v6}, Lnet/aihelp/core/util/elva/text/Sentence;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    invoke-virtual {p0, v5}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Lnet/aihelp/core/util/elva/text/Sentence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Request;->setOriginal(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/aihelp/core/util/elva/text/Request;->setSentences([Lnet/aihelp/core/util/elva/text/Sentence;)V

    return-void
.end method

.method public normalization(Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 3

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Sentence;->getOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/text/Transformations;->breakWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/util/elva/util/ParseUtil;->blankSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ]{2,}"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Sentence;->setOriginal(Ljava/lang/String;)V

    new-instance v1, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;

    invoke-direct {v1, p0, v0}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;-><init>(Lnet/aihelp/core/util/elva/text/Transformations;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/util/elva/text/Transformations;->substitute(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/util/elva/text/Transformations;->fit(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->toArray()[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/elva/text/Sentence;->setMappings([Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Sentence;->setNormalized(Ljava/lang/String;)V

    return-void
.end method
