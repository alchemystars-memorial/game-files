.class Lnet/aihelp/core/util/elva/text/Transformations$Mapper;
.super Ljava/lang/Object;
.source "Transformations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/elva/text/Transformations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mapper"
.end annotation


# instance fields
.field private charIndex:I

.field private find:Ljava/lang/String;

.field private input:Ljava/lang/String;

.field private listIndex:I

.field private final mappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private replace:Ljava/lang/String;

.field private spaceCount:I

.field final synthetic this$0:Lnet/aihelp/core/util/elva/text/Transformations;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/elva/text/Transformations;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->this$0:Lnet/aihelp/core/util/elva/text/Transformations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-char v1, p1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private spaceCount(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->spaceCount(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method private spaceCount(Ljava/lang/String;II)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    aget-char v1, p1, p2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public prepare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->input:Ljava/lang/String;

    iput-object p2, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->find:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->replace:Ljava/lang/String;

    invoke-direct {p0, p2}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->spaceCount(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->spaceCount:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->listIndex:I

    iput p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->charIndex:I

    return-void
.end method

.method public toArray()[Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    invoke-static {}, Lnet/aihelp/core/util/elva/text/Transformations;->access$000()[Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public update(I)V
    .locals 5

    iget v0, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->listIndex:I

    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->input:Ljava/lang/String;

    iget v2, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->charIndex:I

    invoke-direct {p0, v1, v2, p1}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->spaceCount(Ljava/lang/String;II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->listIndex:I

    iput p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->charIndex:I

    iget p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->spaceCount:I

    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->replace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->replace:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->listIndex:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->listIndex:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_3

    iget-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->listIndex:I

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->mappings:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    return-void
.end method
