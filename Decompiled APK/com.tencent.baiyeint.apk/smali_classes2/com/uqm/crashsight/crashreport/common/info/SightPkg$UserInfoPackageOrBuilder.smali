.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UserInfoPackageOrBuilder;
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
    name = "UserInfoPackageOrBuilder"
.end annotation


# virtual methods
.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;
.end method

.method public abstract getListCount()I
.end method

.method public abstract getListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;
.end method

.method public abstract getListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProceName()Ljava/lang/String;
.end method

.method public abstract getProceNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getType()I
.end method

.method public abstract getUpTimeList(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;
.end method

.method public abstract getUpTimeListCount()I
.end method

.method public abstract getUpTimeListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpTimeListOrBuilder(I)Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;
.end method

.method public abstract getUpTimeListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AttachUpTimeOrBuilder;",
            ">;"
        }
    .end annotation
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
