.class Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
.super Ljava/util/AbstractList;
.source "CrashSight"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageOrBuilderExternalList"
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
        "Ljava/util/AbstractList<",
        "TIType;>;",
        "Ljava/util/List<",
        "TIType;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->a:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->a:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilder;->b()I

    move-result v0

    return v0
.end method
