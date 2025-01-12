.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private list_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private proceName_:Ljava/lang/Object;

.field private type_:I

.field private upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private upTimeList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation
.end field

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

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureUpTimeListIsMutable()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$10000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$10500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllList(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllUpTimeList(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addList(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addList(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addListBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    return-object v0
.end method

.method public final addListBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addUpTimeList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUpTimeList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUpTimeList(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUpTimeList(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addUpTimeListBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object v0
.end method

.method public final addUpTimeListBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$10702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;I)I

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$10802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$10902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Ljava/util/List;)Ljava/util/List;

    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;Ljava/util/List;)Ljava/util/List;

    :goto_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->type_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearDeviceId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearList()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearProceName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getProceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->type_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUpTimeList()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method public final clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$10000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    return-object p1
.end method

.method public final getListBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(I)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;

    return-object p1
.end method

.method public final getListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getListCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v0

    return v0
.end method

.method public final getListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getListOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;

    return-object p1
.end method

.method public final getListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getProceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getProceNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->type_:I

    return v0
.end method

.method public final getUpTimeList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    return-object p1
.end method

.method public final getUpTimeListBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(I)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;

    return-object p1
.end method

.method public final getUpTimeListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUpTimeListCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v0

    return v0
.end method

.method public final getUpTimeListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getUpTimeListOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;

    return-object p1
.end method

.method public final getUpTimeListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$10100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getProceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$10800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$10900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11300()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_4

    :cond_a
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->bitField0_:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11500()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->getUpTimeListFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_d
    :goto_4
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11700()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    :cond_2
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllValueMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d(I)V

    :goto_0
    return-object p0
.end method

.method public final removeUpTimeList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d(I)V

    :goto_0
    return-object p0
.end method

.method public final removeValueMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->listBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->list_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setProceName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProceNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage;->access$11800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->proceName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setType(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->type_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUpTimeList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUpTimeList(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeListBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->ensureUpTimeListIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->upTimeList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method
