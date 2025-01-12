.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;
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
    name = "ResponsePkgOrBuilder"
.end annotation


# virtual methods
.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getCmd()I
.end method

.method public abstract getGatewayIp()Ljava/lang/String;
.end method

.method public abstract getGatewayIpBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getQimei()Ljava/lang/String;
.end method

.method public abstract getQimeiBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getResult()J
.end method

.method public abstract getSBuffer()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getServerTime()J
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract getStatusBytes()Lcom/uqm/crashsight/protobuf/ByteString;
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
