.class public Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->d(I)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;-><init>(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$1;-><init>(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method
