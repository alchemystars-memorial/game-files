.class Lcom/uqm/crashsight/protobuf/UnknownFieldSetSchema;
.super Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSet;",
        "Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;",
        ">;"
    }
.end annotation


# virtual methods
.method final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic a(Ljava/lang/Object;II)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(I)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;IJ)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(J)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    check-cast p3, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    iput-object p2, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Reader;)Z
    .locals 0

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->a()Z

    move-result p1

    return p1
.end method

.method final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p1
.end method

.method final synthetic b(Ljava/lang/Object;IJ)V
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->b(J)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(ILcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    check-cast p2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    return-object p1
.end method

.method final d(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->d()I

    move-result p1

    return p1
.end method

.method final synthetic f(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result p1

    return p1
.end method
