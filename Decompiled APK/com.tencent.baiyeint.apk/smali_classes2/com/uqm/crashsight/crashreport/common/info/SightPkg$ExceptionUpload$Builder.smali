.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;",
        ">;",
        "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadOrBuilder;"
    }
.end annotation


# instance fields
.field private allStacks_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

.field private attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private attaches_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private callStack_:Ljava/lang/Object;

.field private coldStart_:Z

.field private crashCount_:I

.field private crashThread_:Ljava/lang/Object;

.field private crashTime_:J

.field private deviceId_:Ljava/lang/Object;

.field private expAddr_:Ljava/lang/Object;

.field private expMessage_:Ljava/lang/Object;

.field private expName_:Ljava/lang/Object;

.field private expuid_:Ljava/lang/Object;

.field private gatewayIp_:Ljava/lang/Object;

.field private libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private libInfos_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private plugins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

.field private type_:Ljava/lang/Object;

.field private userMap_:Lcom/uqm/crashsight/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userid_:Ljava/lang/Object;

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
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAttachesIsMutable()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureLibInfosIsMutable()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePluginsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAppInfoFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$27000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSessionFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getParentForChildren()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;-><init>(Lcom/uqm/crashsight/protobuf/AbstractMessage;Lcom/uqm/crashsight/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;
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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object v0
.end method

.method private internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object v0
.end method

.method private internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;
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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$27700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllAttaches(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllLibInfos(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllPlugins(Ljava/lang/Iterable;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAttaches(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAttaches(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAttaches(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAttachesBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object v0
.end method

.method public final addAttachesBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final addLibInfos(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLibInfos(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLibInfos(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLibInfos(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLibInfosBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object v0
.end method

.method public final addLibInfosBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final addPlugins(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addPlugins(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addPlugins(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addPlugins(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addPluginsBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object v0
.end method

.method public final addPluginsBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->addRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->newUninitializedMessageException(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$27902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashTime_:J

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;J)J

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashCount_:I

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;I)I

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->d()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;

    :goto_2
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    :cond_4
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;

    :goto_3
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;

    :goto_4
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->coldStart_:Z

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Z)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 4

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashTime_:J

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashCount_:I

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_1

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_2
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_3
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_4
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/MapField;->c()V

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->coldStart_:Z

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clear()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAllStacks()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearAttaches()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method public final clearCallStack()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearColdStart()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->coldStart_:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCrashCount()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashCount_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCrashThread()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCrashTime()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashTime_:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeviceId()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpAddr()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpMessage()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpName()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpuid()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearGatewayIp()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLibInfos()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method public final clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clearOneof(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearPlugins()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->e()V

    :goto_0
    return-object p0
.end method

.method public final clearSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUserMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearUserid()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearValueMap()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->clone()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsAllStacks(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsUserMap(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValueMap(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllStacks()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAllStacksMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllStacksCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getAllStacksMap()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllStacksOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final getAllStacksOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object v0
.end method

.method public final getAppInfoBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAppInfoFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object v0
.end method

.method public final getAppInfoOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->f()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getAttaches(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    return-object p1
.end method

.method public final getAttachesBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(I)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;

    return-object p1
.end method

.method public final getAttachesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAttachesCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v0

    return v0
.end method

.method public final getAttachesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAttachesOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;

    return-object p1
.end method

.method public final getAttachesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCallStack()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getColdStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->coldStart_:Z

    return v0
.end method

.method public final getCrashCount()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashCount_:I

    return v0
.end method

.method public final getCrashThread()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCrashTime()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashTime_:J

    return-wide v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$27000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpAddr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getGatewayIp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getLibInfos(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method public final getLibInfosBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(I)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final getLibInfosBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLibInfosCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v0

    return v0
.end method

.method public final getLibInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLibInfosOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object p1
.end method

.method public final getLibInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMutableAllStacks()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMutableUserMap()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getPlugins(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(I)Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method public final getPluginsBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b(I)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    return-object p1
.end method

.method public final getPluginsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPluginsCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c()I

    move-result v0

    return v0
.end method

.method public final getPluginsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPluginsOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->c(I)Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;

    return-object p1
.end method

.method public final getPluginsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->c()Lcom/uqm/crashsight/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object v0
.end method

.method public final getSessionBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getSessionFieldBuilder()Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->e()Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    return-object v0
.end method

.method public final getSessionOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->f()Lcom/uqm/crashsight/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUserMap()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getUserMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getUserMapMap()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final getUserMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final getUserid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

.method public final hasAppInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hasSession()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$27100()Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    const-class v2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method protected final internalGetMutableMapField(I)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    :cond_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeAppInfo(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 4

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$27900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setCrashTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$28700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeSession(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setCrashCount(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_b
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeAppInfo(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    :cond_d
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    goto :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_2

    :cond_f
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30100()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getLibInfosFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_10
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    goto :goto_3

    :cond_13
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_5

    :cond_14
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30200()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getPluginsFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_15
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    :cond_16
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_17
    :goto_5
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_19

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    goto :goto_6

    :cond_18
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_7

    :cond_19
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->b()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->bitField0_:I

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30300()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->getAttachesFieldBuilder()Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_1a
    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(Ljava/lang/Iterable;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :cond_1c
    :goto_7
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$29800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    :cond_1d
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setColdStart(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    :cond_1e
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30700()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

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

    check-cast p2, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    :cond_2
    throw p1
.end method

.method public final mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    instance-of v0, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/Message;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeSession(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->b(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final putAllAllStacks(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putAllStacks(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putAllUserMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putAllValueMap(Ljava/util/Map;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putUserMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putValueMap(Ljava/lang/String;Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeAllStacks(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeAttaches(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d(I)V

    :goto_0
    return-object p0
.end method

.method public final removeLibInfos(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d(I)V

    :goto_0
    return-object p0
.end method

.method public final removePlugins(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->d(I)V

    :goto_0
    return-object p0
.end method

.method public final removeUserMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeValueMap(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->internalGetMutableValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setAppInfo(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAppInfo(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfoBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAttaches(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAttaches(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attachesBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureAttachesIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setCallStack(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCallStackBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31300(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->callStack_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setColdStart(Z)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->coldStart_:Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCrashCount(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashCount_:I

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCrashThread(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCrashThreadBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31200(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashThread_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCrashTime(J)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->crashTime_:J

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceId(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceIdBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31600(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->deviceId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpAddr(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpAddrBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31100(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expAddr_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpMessage(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpMessageBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31000(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expMessage_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpName(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpNameBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30900(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpuid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpuidBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31400(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->expuid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setGatewayIp(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGatewayIpBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31700(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->gatewayIp_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLibInfos(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setLibInfos(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfosBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensureLibInfosIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setPlugins(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setPlugins(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->pluginsBuilder_:Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->ensurePluginsIsMutable()V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;->a(ILcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setRepeatedField(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSession(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->build()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSession(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->sessionBuilder_:Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;->a(Lcom/uqm/crashsight/protobuf/AbstractMessage;)Lcom/uqm/crashsight/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$30800(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->type_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->setUnknownFields(Lcom/uqm/crashsight/protobuf/UnknownFieldSet;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUserid(Ljava/lang/String;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUseridBytes(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->access$31500(Lcom/uqm/crashsight/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->userid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->onChanged()V

    return-object p0
.end method
