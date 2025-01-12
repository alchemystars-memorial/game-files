.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppInfoOrBuilder;
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
    name = "AppInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract containsValueMap(Ljava/lang/String;)Z
.end method

.method public abstract getArch()Ljava/lang/String;
.end method

.method public abstract getArchBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getBaseAddr()Ljava/lang/String;
.end method

.method public abstract getBaseAddrBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getUUID()Ljava/lang/String;
.end method

.method public abstract getUUIDBytes()Lcom/uqm/crashsight/protobuf/ByteString;
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

.method public abstract getVer()Ljava/lang/String;
.end method

.method public abstract getVerBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method
