.class public Lnet/aihelp/core/util/elva/aiml/AIMLStack;
.super Ljava/lang/Object;
.source "AIMLStack.java"


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->stack:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public peek()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->stack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->stack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/AIMLStack;->stack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
