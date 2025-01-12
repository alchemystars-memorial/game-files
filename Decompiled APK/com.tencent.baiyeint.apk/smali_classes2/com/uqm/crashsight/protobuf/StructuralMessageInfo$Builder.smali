.class public final Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

.field private c:Z

.field private d:Z

.field private e:[I

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->e:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->e:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;
    .locals 7

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->c:Z

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    iget-boolean v3, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->d:Z

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->e:[I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/uqm/crashsight/protobuf/FieldInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/uqm/crashsight/protobuf/FieldInfo;

    iget-object v6, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->f:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;-><init>(Lcom/uqm/crashsight/protobuf/ProtoSyntax;Z[I[Lcom/uqm/crashsight/protobuf/FieldInfo;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify a proto syntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Builder can only build once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ProtoSyntax;)V
    .locals 1

    const-string v0, "syntax"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->f:Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->d:Z

    return-void
.end method

.method public final a([I)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;->e:[I

    return-void
.end method
