.class final Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OneofState"
.end annotation


# instance fields
.field private a:[Lcom/uqm/crashsight/protobuf/OneofInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/uqm/crashsight/protobuf/OneofInfo;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;->a:[Lcom/uqm/crashsight/protobuf/OneofInfo;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/OneofInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;",
            ")",
            "Lcom/uqm/crashsight/protobuf/OneofInfo;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;->a:[Lcom/uqm/crashsight/protobuf/OneofInfo;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/uqm/crashsight/protobuf/OneofInfo;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;->a:[Lcom/uqm/crashsight/protobuf/OneofInfo;

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;->a:[Lcom/uqm/crashsight/protobuf/OneofInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Case_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/uqm/crashsight/protobuf/OneofInfo;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a()I

    move-result p2

    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-direct {v3, p2, v1, p1}, Lcom/uqm/crashsight/protobuf/OneofInfo;-><init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/DescriptorMessageInfoFactory$OneofState;->a:[Lcom/uqm/crashsight/protobuf/OneofInfo;

    aput-object v3, p1, v0

    move-object v1, v3

    :cond_1
    return-object v1
.end method
