.class abstract Lcom/uqm/crashsight/protobuf/ListFieldSchema;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaLite;,
        Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaFull;
    }
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

.field private static final b:Lcom/uqm/crashsight/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaFull;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>(B)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    new-instance v0, Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaLite;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>(B)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->b:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ListFieldSchema;-><init>()V

    return-void
.end method

.method static a()Lcom/uqm/crashsight/protobuf/ListFieldSchema;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->a:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    return-object v0
.end method

.method static b()Lcom/uqm/crashsight/protobuf/ListFieldSchema;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/ListFieldSchema;->b:Lcom/uqm/crashsight/protobuf/ListFieldSchema;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method
