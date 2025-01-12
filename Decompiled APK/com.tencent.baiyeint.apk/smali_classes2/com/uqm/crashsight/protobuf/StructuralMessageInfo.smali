.class final Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

.field private final b:Z

.field private final c:[I

.field private final d:[Lcom/uqm/crashsight/protobuf/FieldInfo;

.field private final e:Lcom/uqm/crashsight/protobuf/MessageLite;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/protobuf/ProtoSyntax;Z[I[Lcom/uqm/crashsight/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->b:Z

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->c:[I

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->d:[Lcom/uqm/crashsight/protobuf/FieldInfo;

    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->e:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-void
.end method

.method public static a(I)Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->b:Z

    return v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->e:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-object v0
.end method

.method public final d()[I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->c:[I

    return-object v0
.end method

.method public final e()[Lcom/uqm/crashsight/protobuf/FieldInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/StructuralMessageInfo;->d:[Lcom/uqm/crashsight/protobuf/FieldInfo;

    return-object v0
.end method
