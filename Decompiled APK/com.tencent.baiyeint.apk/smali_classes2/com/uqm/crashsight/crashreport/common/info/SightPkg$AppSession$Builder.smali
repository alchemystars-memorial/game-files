.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    sget-object p1, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureEventsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22600()Z

    return-void
.end method


# virtual methods
.method public final addAllEvents(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->ensureEventsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final addEvents(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->ensureEventsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final addEventsBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$23300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->ensureEventsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->a(Lcom/uqm/crashsight/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;Lcom/uqm/crashsight/protobuf/LazyStringList;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearEvents()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearSessionId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22200()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEvents(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getEventsBytes(I)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->d(I)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getEventsCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->e()Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getEventsList()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->getEventsList()Lcom/uqm/crashsight/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$22300()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    :cond_1
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->bitField0_:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->ensureEventsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$22900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$23000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$23100()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    :cond_2
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEvents(ILjava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->ensureEventsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->events_:Lcom/uqm/crashsight/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSessionId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->access$23200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    return-object p1
.end method
