.class Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageInfoFactory;


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;->a:Lcom/uqm/crashsight/protobuf/GeneratedMessageInfoFactory;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/MessageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/uqm/crashsight/protobuf/MessageInfo;"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a(Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/MessageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to get message info for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
