.class public Lnet/aihelp/core/util/elva/aiml/Text;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Text.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Text;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Text;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Text;->value:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Text;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Text;->value:Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Text;->value:Ljava/lang/String;

    return-object v0
.end method
