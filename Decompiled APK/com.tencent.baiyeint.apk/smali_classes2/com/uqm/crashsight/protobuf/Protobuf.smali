.class final Lcom/uqm/crashsight/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/Protobuf;


# instance fields
.field private final b:Lcom/uqm/crashsight/protobuf/SchemaFactory;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/Protobuf;->a:Lcom/uqm/crashsight/protobuf/Protobuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Protobuf;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/Protobuf;->b:Lcom/uqm/crashsight/protobuf/SchemaFactory;

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/Protobuf;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Protobuf;->a:Lcom/uqm/crashsight/protobuf/Protobuf;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Protobuf;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Schema;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Protobuf;->b:Lcom/uqm/crashsight/protobuf/SchemaFactory;

    invoke-interface {v1, p1}, Lcom/uqm/crashsight/protobuf/SchemaFactory;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Protobuf;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Schema;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Schema;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/uqm/crashsight/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method
