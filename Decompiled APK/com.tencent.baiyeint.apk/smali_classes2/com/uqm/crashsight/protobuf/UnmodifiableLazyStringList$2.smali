.class Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;->b:Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;->b:Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;->a(Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object p1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
