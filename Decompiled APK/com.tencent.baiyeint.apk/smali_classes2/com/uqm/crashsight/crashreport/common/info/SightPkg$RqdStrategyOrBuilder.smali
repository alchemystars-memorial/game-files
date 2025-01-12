.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategyOrBuilder;
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
    name = "RqdStrategyOrBuilder"
.end annotation


# virtual methods
.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getEnable()Z
.end method

.method public abstract getEnableQuery()Z
.end method

.method public abstract getEnableUserInfo()Z
.end method

.method public abstract getEventRecordCount()I
.end method

.method public abstract getEventTimeInterval()I
.end method

.method public abstract getExpUrl()Ljava/lang/String;
.end method

.method public abstract getExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getHttpsExpUrl()Ljava/lang/String;
.end method

.method public abstract getHttpsExpUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getHttpsUrl()Ljava/lang/String;
.end method

.method public abstract getHttpsUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;
.end method

.method public abstract getSecurityOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurityOrBuilder;
.end method

.method public abstract getStrategylastUpdateTime()J
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlBytes()Lcom/uqm/crashsight/protobuf/ByteString;
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

.method public abstract hasSecurity()Z
.end method
