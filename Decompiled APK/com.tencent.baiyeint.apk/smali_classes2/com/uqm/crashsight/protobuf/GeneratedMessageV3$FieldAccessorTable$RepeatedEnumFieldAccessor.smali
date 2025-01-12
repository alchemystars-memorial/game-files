.class final Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedEnumFieldAccessor"
.end annotation


# instance fields
.field private b:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private e:Z

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "valueOf"

    invoke-static {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->c:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->a:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "getValueDescriptor"

    invoke-static {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->d:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->k()Z

    move-result p1

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->e:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Value"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {p3, p1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->f:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p3, v4

    invoke-static {p4, p1, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->g:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "set"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p3, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p3, v1

    invoke-static {p4, p1, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->h:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "add"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p2, v4

    invoke-static {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->i:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->c(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->d:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->d(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->b:Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p2, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->d:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->h:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    check-cast p3, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {v0, p1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-static {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->i:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    check-cast p2, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    return-void
.end method
