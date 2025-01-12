.class public Lnet/aihelp/core/util/elva/aiml/Br;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Br.java"


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
    .locals 0

    const-string p1, ""

    return-object p1
.end method
