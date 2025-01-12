.class public Lnet/aihelp/core/util/elva/aiml/Date;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Date.java"


# instance fields
.field private final format:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Date;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Date;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Date;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/Match;->getCallback()Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/ElvaBot;->getContext()Lnet/aihelp/core/util/elva/Context;

    move-result-object p1

    const-string v1, "predicate.dateFormat"

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Date;->format:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method
