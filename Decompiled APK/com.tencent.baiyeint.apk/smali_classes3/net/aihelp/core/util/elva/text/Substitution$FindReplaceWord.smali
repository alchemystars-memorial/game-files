.class Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;
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
    name = "FindReplaceWord"
.end annotation


# instance fields
.field private final replacement:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/aihelp/core/util/elva/text/Substitution;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/util/elva/text/Substitution;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/aihelp/core/util/elva/text/Substitution;->access$100(Lnet/aihelp/core/util/elva/text/Substitution;)Lnet/aihelp/core/util/elva/text/Tokenizer;

    move-result-object v0

    invoke-static {p1}, Lnet/aihelp/core/util/elva/text/Substitution;->access$000(Lnet/aihelp/core/util/elva/text/Substitution;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/text/Tokenizer;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;->replacement:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/util/elva/text/Substitution;Lnet/aihelp/core/util/elva/text/Substitution$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;-><init>(Lnet/aihelp/core/util/elva/text/Substitution;)V

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

    iget-object p2, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;->this$0:Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-static {p2}, Lnet/aihelp/core/util/elva/text/Substitution;->access$200(Lnet/aihelp/core/util/elva/text/Substitution;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public replacement(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;->replacement:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p1, p0, Lnet/aihelp/core/util/elva/text/Substitution$FindReplaceWord;->replacement:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
