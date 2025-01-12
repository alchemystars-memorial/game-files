.class Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;
.super Ljava/util/AbstractList;
.source "CrashSight"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;


# virtual methods
.method public synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, [B

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->a:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->b(Lcom/uqm/crashsight/protobuf/LazyStringArrayList;I[B)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    return-void
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->a:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->e(I)[B

    move-result-object p1

    return-object p1
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->a:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, [B

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->a:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-static {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a(Lcom/uqm/crashsight/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;->a:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
