.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$SummaryInfoOrBuilder;
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
    name = "SummaryInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getColdStart()Z
.end method

.method public abstract getGatewayIp()Ljava/lang/String;
.end method

.method public abstract getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getProceName()Ljava/lang/String;
.end method

.method public abstract getProceNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getStartTime()J
.end method

.method public abstract getStartType()I
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
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
