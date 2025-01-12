.class public Lnet/aihelp/core/util/elva/text/Response;
.super Lnet/aihelp/core/util/elva/text/Request;
.source "Response.java"


# instance fields
.field public Actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Action;",
            ">;"
        }
    .end annotation
.end field

.field public alicekm:Lnet/aihelp/core/util/elva/aiml/Alicekm;

.field public pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/Tag;",
            ">;"
        }
    .end annotation
.end field

.field public url:Lnet/aihelp/core/util/elva/aiml/Url;

.field public url2:Lnet/aihelp/core/util/elva/aiml/Url2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/util/elva/text/Request;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Request;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/elva/text/Request;-><init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/text/Sentence;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/text/Response;->getOriginal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/text/Response;->setOriginal(Ljava/lang/String;)V

    return-void
.end method

.method public isPatternWildCard()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Response;->pattern:Lnet/aihelp/core/util/elva/aiml/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/aiml/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
