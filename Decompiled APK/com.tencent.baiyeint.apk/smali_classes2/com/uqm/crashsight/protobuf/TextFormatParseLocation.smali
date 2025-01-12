.class public final Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;
.super Ljava/lang/Object;
.source "CrashSight"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->a:I

    iput p1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->a:I

    iget v3, p1, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->b:I

    iget p1, p1, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->b:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/uqm/crashsight/protobuf/TextFormatParseLocation;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ParseLocation{line=%d, column=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
