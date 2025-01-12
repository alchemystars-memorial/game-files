.class public final Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

.field private f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/uqm/crashsight/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    sget-object p1, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    sget-boolean p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->g()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_2
    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    return-object p0
.end method

.method private a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_2
    throw p1
.end method

.method private a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    return-object p0
.end method

.method private b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 4

    new-instance v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;B)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_2

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    iget v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    :cond_1
    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :goto_0
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    :goto_1
    or-int/lit8 v1, v1, 0x2

    :cond_4
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_6

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    :cond_5
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :goto_2
    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    :cond_7
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;I)I

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    :cond_0
    return-void
.end method

.method private d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method private f()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->f:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    :cond_0
    return-void
.end method

.method private h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;",
            "Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    goto :goto_4

    :cond_9
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->g:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->h:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    :goto_4
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    goto :goto_5

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->i:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->d(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    :cond_e
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->b()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->f()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->q()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos;->r()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->d:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    :goto_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p1
.end method
