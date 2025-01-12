.class public Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;,
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;,
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/uqm/crashsight/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    iput-boolean p4, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    return-void
.end method

.method private a(IZ)Lcom/uqm/crashsight/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/AbstractMessage;

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/AbstractMessage;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;->a()V

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;->a()V

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;->a()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(IZ)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b()V

    :cond_1
    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    return-object p0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/AbstractMessage;

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :cond_2
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_3
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/AbstractMessage;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    return-object p0
.end method

.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_0
    return-void
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->j()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/AbstractMessage;

    new-instance v1, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->j()V

    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    return-object p0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_0
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->j()V

    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->f()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b()V

    :cond_1
    iget-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    :cond_2
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a:Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;->a()V

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    :cond_3
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->k()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e:Z

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/Message;

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v4

    if-eq v4, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    return-object v0

    :cond_3
    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    :cond_4
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(IZ)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b:Ljava/util/List;

    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c:Z

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;-><init>(Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageExternalList;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TBType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;-><init>(Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$BuilderExternalList;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TIType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;-><init>(Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3$MessageOrBuilderExternalList;

    return-object v0
.end method
