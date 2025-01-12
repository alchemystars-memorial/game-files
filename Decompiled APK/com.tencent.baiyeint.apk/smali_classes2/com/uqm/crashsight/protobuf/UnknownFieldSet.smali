.class public final Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;,
        Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;,
        Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    }
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

.field private static final c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    new-instance v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final d()I
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    check-cast p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final bridge synthetic getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->c:Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->c()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray()[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a([B)Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->i()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toByteString()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->c(I)Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->b()Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;->a()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/TextFormat;->a()Lcom/uqm/crashsight/protobuf/TextFormat$Printer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Field;->a(ILcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method
