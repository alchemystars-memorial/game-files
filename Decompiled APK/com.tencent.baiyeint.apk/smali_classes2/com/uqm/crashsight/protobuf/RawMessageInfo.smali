.class final Lcom/uqm/crashsight/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageInfo;


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/MessageLite;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/Object;

.field private final d:I


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/ProtoSyntax;
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->a:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-object v0

    :cond_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/ProtoSyntax;->b:Lcom/uqm/crashsight/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->a:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method final e()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/RawMessageInfo;->c:[Ljava/lang/Object;

    return-object v0
.end method
