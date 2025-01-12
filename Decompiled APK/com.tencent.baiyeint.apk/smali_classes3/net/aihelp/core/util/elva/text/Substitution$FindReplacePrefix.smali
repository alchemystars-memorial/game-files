.class Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;
.super Ljava/lang/Object;
.source "Substitution.java"

# interfaces
.implements Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/elva/text/Substitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindReplacePrefix"
.end annotation


# instance fields
.field private TOKEN:Ljava/lang/String;

.field final synthetic this$0:Lnet/aihelp/core/util/elva/text/Substitution;

.field private token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/util/elva/text/Substitution;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/util/elva/text/Substitution;Lnet/aihelp/core/util/elva/text/Substitution$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;-><init>(Lnet/aihelp/core/util/elva/text/Substitution;)V

    return-void
.end method


# virtual methods
.method public matches(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->token:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->TOKEN:Ljava/lang/String;

    iget-object p2, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-static {p2}, Lnet/aihelp/core/util/elva/text/Substitution;->access$200(Lnet/aihelp/core/util/elva/text/Substitution;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public replacement(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-static {v0}, Lnet/aihelp/core/util/elva/text/Substitution;->access$200(Lnet/aihelp/core/util/elva/text/Substitution;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-static {v1}, Lnet/aihelp/core/util/elva/text/Substitution;->access$100(Lnet/aihelp/core/util/elva/text/Substitution;)Lnet/aihelp/core/util/elva/text/Tokenizer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-static {v3}, Lnet/aihelp/core/util/elva/text/Substitution;->access$000(Lnet/aihelp/core/util/elva/text/Substitution;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplacePrefix;->token:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/util/elva/text/Tokenizer;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
