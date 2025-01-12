.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ExceptionUploadOrBuilder;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/common/info/SightPkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExceptionUploadOrBuilder"
.end annotation


# virtual methods
.method public abstract containsAllStacks(Ljava/lang/String;)Z
.end method

.method public abstract containsUserMap(Ljava/lang/String;)Z
.end method

.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getAllStacks()Ljava/util/Map;
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
.end method

.method public abstract getAllStacksCount()I
.end method

.method public abstract getAllStacksMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllStacksOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAllStacksOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppInfo()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
.end method

.method public abstract getAppInfoOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
.end method

.method public abstract getAttaches(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;
.end method

.method public abstract getAttachesCount()I
.end method

.method public abstract getAttachesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttachesOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;
.end method

.method public abstract getAttachesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachmentOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallStack()Ljava/lang/String;
.end method

.method public abstract getCallStackBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getColdStart()Z
.end method

.method public abstract getCrashCount()I
.end method

.method public abstract getCrashThread()Ljava/lang/String;
.end method

.method public abstract getCrashThreadBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getCrashTime()J
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getExpAddr()Ljava/lang/String;
.end method

.method public abstract getExpAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getExpMessage()Ljava/lang/String;
.end method

.method public abstract getExpMessageBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getExpName()Ljava/lang/String;
.end method

.method public abstract getExpNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getExpuid()Ljava/lang/String;
.end method

.method public abstract getExpuidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getGatewayIp()Ljava/lang/String;
.end method

.method public abstract getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getLibInfos(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
.end method

.method public abstract getLibInfosCount()I
.end method

.method public abstract getLibInfosList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLibInfosOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
.end method

.method public abstract getLibInfosOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlugins(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;
.end method

.method public abstract getPluginsCount()I
.end method

.method public abstract getPluginsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPluginsOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
.end method

.method public abstract getPluginsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSession()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSession;
.end method

.method public abstract getSessionOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getUserMap()Ljava/util/Map;
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
.end method

.method public abstract getUserMapCount()I
.end method

.method public abstract getUserMapMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserid()Ljava/lang/String;
.end method

.method public abstract getUseridBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getValueMap()Ljava/util/Map;
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
.end method

.method public abstract getValueMapCount()I
.end method

.method public abstract getValueMapMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValueMapOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValueMapOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasAppInfo()Z
.end method

.method public abstract hasSession()Z
.end method
