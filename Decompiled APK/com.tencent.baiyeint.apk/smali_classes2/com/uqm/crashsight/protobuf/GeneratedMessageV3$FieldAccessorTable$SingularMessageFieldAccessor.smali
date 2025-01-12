.class final Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingularMessageFieldAccessor"
.end annotation


# instance fields
.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
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
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->a:Ljava/lang/Class;

    const/4 p3, 0x0

    new-array p5, p3, [Ljava/lang/Class;

    const-string v0, "newBuilder"

    invoke-static {p1, v0, p5}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->b:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "get"

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Builder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Class;

    invoke-static {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-object v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Message$Builder;

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v0, p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object p2

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p2

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Message$Builder;

    return-object p1
.end method
