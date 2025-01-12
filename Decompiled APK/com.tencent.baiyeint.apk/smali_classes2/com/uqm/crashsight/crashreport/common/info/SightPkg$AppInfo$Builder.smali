.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private arch_:Ljava/lang/Object;

.field private baseAddr_:Ljava/lang/Object;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private uUID_:Ljava/lang/Object;

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

.field private ver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$23500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24000()Z

    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearArch()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBaseAddr()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearUUID()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearVer()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getArch()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getArchBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getBaseAddr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$23500()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUUID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUUIDBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final getVer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$23600()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getArch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getBaseAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    :cond_5
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$24900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$25000()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    :cond_2
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllValueMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeValueMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setArch(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setArchBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$25200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->arch_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBaseAddr(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBaseAddrBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$25400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->baseAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$25100(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUUID(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUUIDBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$25300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->uUID_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setVer(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVerBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->access$25500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->ver_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->onChanged()V

    return-object p0
.end method
