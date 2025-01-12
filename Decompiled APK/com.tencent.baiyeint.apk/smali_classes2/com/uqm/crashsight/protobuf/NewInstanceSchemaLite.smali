.class final Lcom/uqm/crashsight/protobuf/NewInstanceSchemaLite;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/NewInstanceSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;

    sget-object v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;->b:Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageLite;->a(Lcom/uqm/crashsight/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
