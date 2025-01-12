.class Lcom/uqm/crashsight/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;",
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->c()V

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;II)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Reader;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    return-object p1
.end method

.method final synthetic b(Ljava/lang/Object;IJ)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->b()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;)Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->c()V

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->d()I

    move-result p1

    return p1
.end method

.method final synthetic f(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSetLite;->e()I

    move-result p1

    return p1
.end method
