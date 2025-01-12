.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;
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
    name = "AttachUpTimeOrBuilder"
.end annotation


# virtual methods
.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getAttachSize()J
.end method

.method public abstract getCopyTime()J
.end method

.method public abstract getDeleteTime()J
.end method

.method public abstract getExpUid()Ljava/lang/String;
.end method

.method public abstract getExpUidBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getNetworkType()Ljava/lang/String;
.end method

.method public abstract getNetworkTypeBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getRetCode()I
.end method

.method public abstract getRetMsg()Ljava/lang/String;
.end method

.method public abstract getRetMsgBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getTotalTime()J
.end method

.method public abstract getType()I
.end method

.method public abstract getUploadTime()J
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

.method public abstract getZipAttachSize()J
.end method

.method public abstract getZipTime()J
.end method
