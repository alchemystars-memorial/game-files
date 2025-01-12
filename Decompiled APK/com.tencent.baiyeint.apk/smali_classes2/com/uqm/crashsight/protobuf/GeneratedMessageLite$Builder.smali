.class public abstract Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;
.super Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/uqm/crashsight/protobuf/Schema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/Schema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a()Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/uqm/crashsight/protobuf/Schema;->d(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->c:Z

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    :goto_0
    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->a()V

    iget-object v2, v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$Builder;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/uqm/crashsight/protobuf/Schema;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
