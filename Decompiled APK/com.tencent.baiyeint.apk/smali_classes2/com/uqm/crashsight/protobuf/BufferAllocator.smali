.class abstract Lcom/uqm/crashsight/protobuf/BufferAllocator;
.super Ljava/lang/Object;
.source "CrashSight"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/BufferAllocator$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/BufferAllocator$1;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.end method

.method public abstract b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.end method
