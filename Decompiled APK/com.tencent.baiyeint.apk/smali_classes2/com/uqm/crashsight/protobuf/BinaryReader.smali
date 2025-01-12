.class abstract Lcom/uqm/crashsight/protobuf/BinaryReader;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BinaryReader;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Z)Lcom/uqm/crashsight/protobuf/BinaryReader;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryReader$SafeHeapReader;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
