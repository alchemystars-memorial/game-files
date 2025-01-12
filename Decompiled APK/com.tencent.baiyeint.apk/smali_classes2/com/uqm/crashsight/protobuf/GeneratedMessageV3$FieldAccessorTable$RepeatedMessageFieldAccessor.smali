.class final Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessageFieldAccessor"
.end annotation


# instance fields
.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
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

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->a:Ljava/lang/Class;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    const-string v1, "newBuilder"

    invoke-static {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->b:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Builder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, p3

    invoke-static {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message$Builder;

    check-cast p1, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Message$Builder;->build()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;I)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    return-void
.end method
