.class Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MapField$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmutableMessageConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/uqm/crashsight/protobuf/MapField$Converter<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/MapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/protobuf/MapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/MapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;->a:Lcom/uqm/crashsight/protobuf/MapEntry;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;->a:Lcom/uqm/crashsight/protobuf/MapEntry;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/uqm/crashsight/protobuf/Message;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/MapField$ImmutableMessageConverter;->a:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Message;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    check-cast p1, Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
