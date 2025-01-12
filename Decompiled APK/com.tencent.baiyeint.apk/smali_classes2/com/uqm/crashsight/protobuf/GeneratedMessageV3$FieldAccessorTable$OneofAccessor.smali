.class Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneofAccessor"
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Case"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {p3, p1, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->b:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->c:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "clear"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    invoke-static {p4, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Z
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Z
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
