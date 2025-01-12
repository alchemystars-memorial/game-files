.class public Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite$ObjectIntPair;,
        Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite$ExtensionClassHolder;
    }
.end annotation


# static fields
.field static final a:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

.field private static volatile b:Z = false

.field private static c:Z = true

.field private static volatile d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;-><init>(B)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->a:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->e:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->a:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->e:Ljava/util/Map;

    return-void

    :cond_0
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->e:Ljava/util/Map;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->b:Z

    return v0
.end method

.method public static c()Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    const-class v0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->c:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryFactory;->a()Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->a:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    :goto_0
    sput-object v1, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->d:Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite;I)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->e:Ljava/util/Map;

    new-instance v1, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p1
.end method
