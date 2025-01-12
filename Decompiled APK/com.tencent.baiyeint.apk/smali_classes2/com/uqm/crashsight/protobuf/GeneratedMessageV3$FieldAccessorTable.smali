.class public final Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldAccessorTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;,
        Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

.field private c:[Ljava/lang/String;

.field private final d:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->d:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->t()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This type does not have extensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->e()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->d:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OneofDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->i()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p0

    sget-object v0, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;",
            ">;)",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_a

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result v4

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    :cond_2
    move-object v10, v3

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_4

    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;

    invoke-direct {v4, v6, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedEnumFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->i:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularMessageFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->h:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->f()Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;->f:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularStringFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->b:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    new-instance v4, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->d:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_b

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->d:[Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    new-instance v5, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iget-object v7, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    add-int v8, v1, v0

    aget-object v7, v7, v8

    invoke-direct {v5, v6, v7, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->e:Z

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->c:[Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
