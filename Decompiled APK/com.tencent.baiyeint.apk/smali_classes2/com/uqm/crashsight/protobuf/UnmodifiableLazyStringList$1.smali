.class Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:I

.field private synthetic c:Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;I)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->c:Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;

    iput p2, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->c:Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->b:I

    invoke-interface {p1, p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
