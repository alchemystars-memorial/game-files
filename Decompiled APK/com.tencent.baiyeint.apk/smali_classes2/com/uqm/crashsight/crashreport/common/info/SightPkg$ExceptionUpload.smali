.class public final Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
.super Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionUpload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;,
        Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final ALLSTACKS_FIELD_NUMBER:I = 0x8

.field public static final APPINFO_FIELD_NUMBER:I = 0xe

.field public static final ATTACHES_FIELD_NUMBER:I = 0x11

.field public static final CALLSTACK_FIELD_NUMBER:I = 0x7

.field public static final COLDSTART_FIELD_NUMBER:I = 0x15

.field public static final CRASHCOUNT_FIELD_NUMBER:I = 0xb

.field public static final CRASHTHREAD_FIELD_NUMBER:I = 0x6

.field public static final CRASHTIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

.field public static final DEVICEID_FIELD_NUMBER:I = 0xd

.field public static final EXPADDR_FIELD_NUMBER:I = 0x5

.field public static final EXPMESSAGE_FIELD_NUMBER:I = 0x4

.field public static final EXPNAME_FIELD_NUMBER:I = 0x3

.field public static final EXPUID_FIELD_NUMBER:I = 0x9

.field public static final GATEWAYIP_FIELD_NUMBER:I = 0x14

.field public static final LIBINFOS_FIELD_NUMBER:I = 0xf

.field private static final PARSER:Lcom/uqm/crashsight/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLUGINS_FIELD_NUMBER:I = 0x10

.field public static final SESSION_FIELD_NUMBER:I = 0xa

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final USERID_FIELD_NUMBER:I = 0xc

.field public static final USERMAP_FIELD_NUMBER:I = 0x13

.field public static final VALUEMAP_FIELD_NUMBER:I = 0x12

.field private static final serialVersionUID:J


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

.field private appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

.field private attaches_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private volatile callStack_:Ljava/lang/Object;

.field private coldStart_:Z

.field private crashCount_:I

.field private volatile crashThread_:Ljava/lang/Object;

.field private crashTime_:J

.field private volatile deviceId_:Ljava/lang/Object;

.field private volatile expAddr_:Ljava/lang/Object;

.field private volatile expMessage_:Ljava/lang/Object;

.field private volatile expName_:Ljava/lang/Object;

.field private volatile expuid_:Ljava/lang/Object;

.field private volatile gatewayIp_:Ljava/lang/Object;

.field private libInfos_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private plugins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

.field private volatile type_:Ljava/lang/Object;

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

.field private volatile userid_:Ljava/lang/Object;

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
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$1;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$1;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->parseUnknownField(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->i()Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_1

    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v3, v3, 0x20

    :cond_1
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_2

    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v3, v3, 0x10

    :cond_2
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    :cond_4
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_5
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    move-result-object v5

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;

    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->f()I

    move-result v4

    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    goto/16 :goto_0

    :sswitch_b
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    move-result-object v5

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->parser()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;

    invoke-virtual {v5}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession$Builder;->buildPartial()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_d
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_8

    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    or-int/lit8 v3, v3, 0x1

    :cond_8
    sget-object v4, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->getParserForType()Lcom/uqm/crashsight/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MapEntry;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    move v1, v2

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->a(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    :cond_b
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->makeExtensionsImmutable()V

    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    :cond_e
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    :cond_f
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet$Builder;->a()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x10 -> :sswitch_13
        0x1a -> :sswitch_12
        0x22 -> :sswitch_11
        0x2a -> :sswitch_10
        0x32 -> :sswitch_f
        0x3a -> :sswitch_e
        0x42 -> :sswitch_d
        0x4a -> :sswitch_c
        0x52 -> :sswitch_b
        0x58 -> :sswitch_a
        0x62 -> :sswitch_9
        0x6a -> :sswitch_8
        0x72 -> :sswitch_7
        0x7a -> :sswitch_6
        0x82 -> :sswitch_5
        0x8a -> :sswitch_4
        0x92 -> :sswitch_3
        0x9a -> :sswitch_2
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$27700()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$27900(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$27902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;J)J
    .locals 0

    iput-wide p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    return-wide p1
.end method

.method static synthetic access$28100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28200(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$28602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$28700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$28702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    return-object p1
.end method

.method static synthetic access$28902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;I)I
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    return p1
.end method

.method static synthetic access$29000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$29002(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29100(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$29102(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29202(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method static synthetic access$29300(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$29302(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$29400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$29402(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$29500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$29502(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$29600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$29602(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$29700(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$29702(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Lcom/uqm/crashsight/protobuf/MapField;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$29800(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$29802(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29902(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    return p1
.end method

.method static synthetic access$30000(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$30100()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$30200()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$30300()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$30400(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$30500(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/MapField;
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$30600(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$30700()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$30800(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$30900(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31000(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31100(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31200(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31300(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31400(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31500(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31600(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$31700(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->checkByteStringIsUtf8(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg;->access$27000()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->allStacks_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userMap_:Lcom/uqm/crashsight/protobuf/MapField;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->valueMap_:Lcom/uqm/crashsight/protobuf/MapField;

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Lcom/uqm/crashsight/protobuf/ByteString;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/uqm/crashsight/protobuf/Parser;Ljava/io/InputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/Parser;->parseFrom([BLcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object p0
.end method

.method public static parser()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsAllStacks(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/uqm/crashsight/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAllStacksMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllStacksCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getAllStacksOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getAppInfoOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAttaches(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;

    return-object p1
.end method

.method public final getAttachesCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object v0
.end method

.method public final getAttachesOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    return-object v0
.end method

.method public final getCallStack()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getColdStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    return v0
.end method

.method public final getCrashCount()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    return v0
.end method

.method public final getCrashThread()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getCrashTime()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    return-wide v0
.end method

.method public final getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDefaultInstanceForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpAddr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getExpuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getGatewayIp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getLibInfos(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method public final getLibInfosCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object v0
.end method

.method public final getLibInfosOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/uqm/crashsight/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->PARSER:Lcom/uqm/crashsight/protobuf/Parser;

    return-object v0
.end method

.method public final getPlugins(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    return-object p1
.end method

.method public final getPluginsCount()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object v0
.end method

.method public final getPluginsOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    invoke-static {v5, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    if-nez v3, :cond_7

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    if-nez v3, :cond_9

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    move v3, v2

    :goto_5
    if-nez v3, :cond_b

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_6

    :cond_c
    move v3, v2

    :goto_6
    if-nez v3, :cond_d

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_d
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v5, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_8

    :cond_f
    move v3, v2

    :goto_8
    if-nez v3, :cond_10

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_10
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v3, :cond_11

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_11
    iget v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    if-eqz v3, :cond_12

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_9

    :cond_13
    move v3, v2

    :goto_9
    if-nez v3, :cond_14

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_14
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_a

    :cond_15
    move v3, v2

    :goto_a
    if-nez v3, :cond_16

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_16
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v3, :cond_17

    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_17
    move v3, v2

    :goto_b
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    const/16 v4, 0xf

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_18
    move v3, v2

    :goto_c
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    move v3, v2

    :goto_d
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1a

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1a
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v5, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v4

    const/16 v5, 0x12

    invoke-static {v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_e

    :cond_1b
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v5, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {v5}, Lcom/uqm/crashsight/protobuf/MapEntry;->c()Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntry$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uqm/crashsight/protobuf/MapEntry$Builder;->a()Lcom/uqm/crashsight/protobuf/MapEntry;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v5, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(ILcom/uqm/crashsight/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_f

    :cond_1c
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_10

    :cond_1d
    move v1, v2

    :goto_10
    if-nez v1, :cond_1e

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-boolean v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    if-eqz v1, :cond_1f

    const/16 v2, 0x15

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedSize:I

    return v0
.end method

.method public final getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->getDefaultInstance()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSessionOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/uqm/crashsight/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUserMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getValueMapMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapCount()I
    .locals 1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

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

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSession()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedHashCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedHashCode:I

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDescriptor()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashCount()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUserid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->hasAppInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getLibInfosList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getPluginsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAttachesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getColdStart()Z

    move-result v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedHashCode:I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

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
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilderForType(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->newBuilderForType()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->DEFAULT_INSTANCE:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;-><init>(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$1;)V

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;->mergeFrom(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->toBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->type_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashTime_:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expName_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expMessage_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expAddr_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    if-nez v0, :cond_a

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashThread_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    if-nez v0, :cond_c

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->callStack_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetAllStacks()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$AllStacksDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v4, 0x8

    invoke-static {p1, v0, v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    if-nez v0, :cond_e

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->expuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->session_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    if-eqz v0, :cond_f

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_f
    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->crashCount_:I

    if-eqz v0, :cond_10

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(II)V

    :cond_10
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_7

    :cond_11
    move v0, v1

    :goto_7
    if-nez v0, :cond_12

    const/16 v0, 0xc

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->userid_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_8

    :cond_13
    move v0, v1

    :goto_8
    if-nez v0, :cond_14

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->deviceId_:Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->appInfo_:Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    if-eqz v0, :cond_15

    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    :cond_15
    move v0, v1

    :goto_9
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_16

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->libInfos_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    move v0, v1

    :goto_a
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->plugins_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_18

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->attaches_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-virtual {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetValueMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$ValueMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v4, 0x12

    invoke-static {p1, v0, v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->internalGetUserMap()Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object v0

    sget-object v3, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload$UserMapDefaultEntryHolder;->defaultEntry:Lcom/uqm/crashsight/protobuf/MapEntry;

    const/16 v4, 0x13

    invoke-static {p1, v0, v3, v4}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;Lcom/uqm/crashsight/protobuf/MapField;Lcom/uqm/crashsight/protobuf/MapEntry;I)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_19

    move v1, v2

    :cond_19
    if-nez v1, :cond_1a

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->gatewayIp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3;->writeString(Lcom/uqm/crashsight/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1a
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->coldStart_:Z

    if-eqz v0, :cond_1b

    const/16 v1, 0x15

    invoke-virtual {p1, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a(IZ)V

    :cond_1b
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUpload;->unknownFields:Lcom/uqm/crashsight/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/UnknownFieldSet;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method
