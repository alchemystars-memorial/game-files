.class final Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final a:Lcom/uqm/crashsight/protobuf/CodedOutputStream;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->b:[B

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a([B)Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->a:Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->a:Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->b:[B

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/uqm/crashsight/protobuf/CodedOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->a:Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    return-object v0
.end method
