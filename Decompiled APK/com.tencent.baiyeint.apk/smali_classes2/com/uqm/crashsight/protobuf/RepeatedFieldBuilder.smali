.class public Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;,
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$BuilderExternalList;,
        Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/uqm/crashsight/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->b()Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessage;

    new-instance v2, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    invoke-direct {v2, v0, p0, v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessage;Lcom/uqm/crashsight/protobuf/GeneratedMessage$BuilderParent;Z)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->c()Lcom/uqm/crashsight/protobuf/GeneratedMessage$Builder;

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

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilder;->d()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method
