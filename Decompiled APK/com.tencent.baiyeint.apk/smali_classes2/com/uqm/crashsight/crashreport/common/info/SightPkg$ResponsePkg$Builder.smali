.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cmd_:I

.field private gatewayIp_:Ljava/lang/Object;

.field private qimei_:Ljava/lang/Object;

.field private result_:J

.field private sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

.field private serverTime_:J

.field private status_:Ljava/lang/Object;

.field private valueMap_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object v0
.end method

.method private internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$500()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->result_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;J)J

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->cmd_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;I)I

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/protobuf/ByteString;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->serverTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;J)J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 3

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->result_:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->cmd_:I

    sget-object v2, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->serverTime_:J

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearCmd()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->cmd_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearGatewayIp()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearQimei()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearResult()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->result_:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSBuffer()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServerTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->serverTime_:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStatus()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getCmd()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->cmd_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getGatewayIp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getMutableValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getQimei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getResult()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->result_:J

    return-wide v0
.end method

.method public final getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->serverTime_:J

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getValueMapMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getValueMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final internalGetMutableMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map field number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 4

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getResult()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setResult(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getCmd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setCmd(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setSBuffer(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getGatewayIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setServerTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->getQimei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1700()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    :cond_2
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllValueMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeValueMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setCmd(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->cmd_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGatewayIp(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGatewayIpBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setQimei(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setQimeiBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$2000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->qimei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setResult(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->result_:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSBuffer(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->sBuffer_:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->serverTime_:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStatus(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStatusBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;->access$1900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->status_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg$Builder;

    move-result-object p1

    return-object p1
.end method
