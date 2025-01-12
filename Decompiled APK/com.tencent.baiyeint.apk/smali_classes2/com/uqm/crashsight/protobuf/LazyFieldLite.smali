.class public Lcom/uqm/crashsight/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "CrashSight"


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/ByteString;

.field private b:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

.field private volatile c:Lcom/uqm/crashsight/protobuf/MessageLite;

.field private volatile d:Lcom/uqm/crashsight/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->c()Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "found null ByteString"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "found null ExtensionRegistry"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/MessageLite;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;
    :try_end_1
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c(Lcom/uqm/crashsight/protobuf/MessageLite;)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-object p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    return-object v0
.end method

.method public final c()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    if-nez v0, :cond_3

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite;->toByteString()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    :goto_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->d:Lcom/uqm/crashsight/protobuf/ByteString;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyFieldLite;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c:Lcom/uqm/crashsight/protobuf/MessageLite;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->c()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
