.class public Lnet/aihelp/core/util/elva/xml/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final NULL_ATTR:Ljava/lang/String; = "xsi:nil"

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;

.field public static final TYPE_ATTR:Ljava/lang/String; = "xsi:type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->AMP:Ljava/lang/Character;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->APOS:Ljava/lang/Character;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->BANG:Ljava/lang/Character;

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->EQ:Ljava/lang/Character;

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->LT:Ljava/lang/Character;

    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->QUEST:Ljava/lang/Character;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->QUOT:Ljava/lang/Character;

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/util/elva/xml/XML$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/elva/xml/XML$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lnet/aihelp/core/util/elva/xml/XML;->codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Lnet/aihelp/core/util/elva/xml/XML;->mustEscape(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "&#x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "&apos;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isDecimalNotation(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static mustEscape(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_1
    const v0, 0xe000

    if-lt p0, v0, :cond_2

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_2
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_4

    const v0, 0x10ffff

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' contains a space character."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Empty string."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parse(Lnet/aihelp/core/util/elva/xml/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->BANG:Ljava/lang/Character;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result p2

    const/16 v0, 0x2d

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result p1

    if-ne p1, v0, :cond_0

    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->skipPast(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->back()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x5b

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "CDATA"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result p2

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return v3

    :cond_3
    const-string p1, "Expected \'CDATA[\'"

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p2, Lnet/aihelp/core/util/elva/xml/XML;->LT:Ljava/lang/Character;

    if-ne p1, p2, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    sget-object p2, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    if-ne p1, p2, :cond_6

    add-int/lit8 v2, v2, -0x1

    :cond_6
    :goto_1
    if-gtz v2, :cond_4

    return v3

    :cond_7
    const-string p1, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_8
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_9

    const-string p1, "?>"

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->skipPast(Ljava/lang/String;)V

    return v3

    :cond_9
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    if-ne p1, p2, :cond_a

    return v2

    :cond_a
    const-string p1, "Misshaped close tag"

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Mismatched close tag "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_d
    instance-of p2, v0, Ljava/lang/Character;

    const-string v1, "Misshaped tag"

    if-nez p2, :cond_23

    check-cast v0, Ljava/lang/String;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    move v6, v3

    move-object v5, v4

    move-object v7, v5

    :goto_2
    if-nez v5, :cond_e

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    :cond_e
    instance-of v8, v5, Ljava/lang/String;

    const-string v9, ""

    if-eqz v8, :cond_15

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lnet/aihelp/core/util/elva/xml/XML;->EQ:Ljava/lang/Character;

    if-ne v8, v10, :cond_14

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_13

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->isConvertNilAttributeToNull()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "xsi:nil"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v6, v2

    goto :goto_4

    :cond_f
    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    const-string v9, "xsi:type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter;

    goto :goto_4

    :cond_10
    if-nez v6, :cond_12

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->isKeepStrings()Z

    move-result v9

    check-cast v8, Ljava/lang/String;

    if-eqz v9, :cond_11

    goto :goto_3

    :cond_11
    invoke-static {v8}, Lnet/aihelp/core/util/elva/xml/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    :goto_3
    invoke-virtual {p2, v5, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    :goto_4
    move-object v5, v4

    goto :goto_2

    :cond_13
    const-string p1, "Missing value"

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_14
    invoke-virtual {p2, v5, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v5, v8

    goto :goto_2

    :cond_15
    sget-object v4, Lnet/aihelp/core/util/elva/xml/XML;->SLASH:Ljava/lang/Character;

    if-ne v5, v4, :cond_19

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    if-ne p3, v2, :cond_18

    if-eqz v6, :cond_16

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_16
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_17

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_17
    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    return v3

    :cond_18
    invoke-virtual {p0, v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_19
    sget-object v4, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    if-ne v5, v4, :cond_22

    :cond_1a
    :goto_6
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    if-nez v0, :cond_1b

    return v3

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unclosed tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_1c
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1f

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    if-eqz v7, :cond_1d

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7}, Lnet/aihelp/core/util/elva/xml/XML;->stringToValue(Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_1d
    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->isKeepStrings()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-static {v1}, Lnet/aihelp/core/util/elva/xml/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    invoke-virtual {p2, v4, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_1f
    sget-object v4, Lnet/aihelp/core/util/elva/xml/XML;->LT:Ljava/lang/Character;

    if-ne v1, v4, :cond_1a

    invoke-static {p0, p2, v0, p3}, Lnet/aihelp/core/util/elva/xml/XML;->parse(Lnet/aihelp/core/util/elva/xml/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_20

    invoke-virtual {p1, v0, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_20
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-ne p0, v2, :cond_21

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p3}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_21
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    return v3

    :cond_22
    invoke-virtual {p0, v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0

    :cond_23
    invoke-virtual {p0, v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p0

    throw p0
.end method

.method private static stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    const/16 v2, 0x2d

    const-string v3, "] is not a valid number."

    const-string v4, "val ["

    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    if-ne v0, v2, :cond_b

    :cond_1
    invoke-static {p0}, Lnet/aihelp/core/util/elva/xml/XML;->isDecimalNotation(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-ne v0, v2, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v1

    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v6, 0x1

    if-ne v0, v5, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_8

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne v0, v2, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_8

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v5, :cond_8

    if-lt v2, v5, :cond_8

    if-le v2, v1, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_9

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0x3f

    if-gt p0, v1, :cond_a

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_6

    :cond_5
    :try_start_0
    invoke-static {p0}, Lnet/aihelp/core/util/elva/xml/XML;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-object p0
.end method

.method public static stringToValue(Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lnet/aihelp/core/util/elva/xml/XMLXsiTypeConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/aihelp/core/util/elva/xml/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->ORIGINAL:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    invoke-static {p0, v0}, Lnet/aihelp/core/util/elva/xml/XML;->toJSONObject(Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lnet/aihelp/core/util/elva/xml/XMLTokener;

    invoke-direct {v1, p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->more()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "<"

    invoke-virtual {v1, p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->skipPast(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->more()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {v1, v0, p0, p1}, Lnet/aihelp/core/util/elva/xml/XML;->parse(Lnet/aihelp/core/util/elva/xml/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->KEEP_STRINGS:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    invoke-static {p0, p1}, Lnet/aihelp/core/util/elva/xml/XML;->toJSONObject(Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->ORIGINAL:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    invoke-static {p0, p1}, Lnet/aihelp/core/util/elva/xml/XML;->toJSONObject(Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->ORIGINAL:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/aihelp/core/util/elva/xml/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->ORIGINAL:Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;

    invoke-static {p0, p1, v0}, Lnet/aihelp/core/util/elva/xml/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Lorg/json/JSONObject;

    const-string v2, "/>"

    const/16 v3, 0x13

    const/4 v4, 0x0

    const-string v5, "</"

    if-eqz v1, :cond_d

    const/16 v1, 0x3c

    const/16 v6, 0x3e

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, ""

    if-nez v8, :cond_2

    move-object v8, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_4

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v3, :cond_3

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object v8, v10

    goto :goto_1

    :cond_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    instance-of v7, v8, Lorg/json/JSONArray;

    if-eqz v7, :cond_6

    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v9, v4

    :goto_2
    if-ge v9, v7, :cond_1

    if-lez v9, :cond_5

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnet/aihelp/core/util/elva/xml/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/aihelp/core/util/elva/xml/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    instance-of v10, v8, Lorg/json/JSONArray;

    if-eqz v10, :cond_9

    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_1

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lorg/json/JSONArray;

    if-eqz v12, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-static {v11, v12, p2}, Lnet/aihelp/core/util/elva/xml/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    invoke-static {v11, v7, p2}, Lnet/aihelp/core/util/elva/xml/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    invoke-static {v8, v7, p2}, Lnet/aihelp/core/util/elva/xml/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    if-eqz p0, :cond_14

    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_f

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_5

    :cond_10
    if-eqz v1, :cond_11

    move-object v1, p0

    check-cast v1, Lorg/json/JSONArray;

    goto :goto_5

    :cond_11
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_6
    if-ge v4, p0, :cond_13

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_12

    const-string v3, "array"

    goto :goto_7

    :cond_12
    move-object v3, p1

    :goto_7
    invoke-static {v2, v3, p2}, Lnet/aihelp/core/util/elva/xml/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/util/elva/xml/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    if-nez p0, :cond_15

    const-string p0, "null"

    goto :goto_8

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/core/util/elva/xml/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_8
    if-nez p1, :cond_16

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "<"

    if-nez p2, :cond_17

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
