.class Lcom/uqm/crashsight/protobuf/TypeRegistry$EmptyTypeRegistryHolder;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/TypeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyTypeRegistryHolder"
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/TypeRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/TypeRegistry;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/TypeRegistry;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/TypeRegistry$EmptyTypeRegistryHolder;->a:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/uqm/crashsight/protobuf/TypeRegistry;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/TypeRegistry$EmptyTypeRegistryHolder;->a:Lcom/uqm/crashsight/protobuf/TypeRegistry;

    return-object v0
.end method
