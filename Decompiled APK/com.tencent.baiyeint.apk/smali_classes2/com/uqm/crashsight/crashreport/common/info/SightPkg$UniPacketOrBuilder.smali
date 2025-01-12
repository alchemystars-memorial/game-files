.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$UniPacketOrBuilder;
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
    name = "UniPacketOrBuilder"
.end annotation


# virtual methods
.method public abstract getEncodeName()Ljava/lang/String;
.end method

.method public abstract getEncodeNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getIRequestId()I
.end method

.method public abstract getIVersion()I
.end method

.method public abstract getRequest()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;
.end method

.method public abstract getRequestOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkgOrBuilder;
.end method

.method public abstract getResponse()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkg;
.end method

.method public abstract getResponseOrBuilder()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$ResponsePkgOrBuilder;
.end method

.method public abstract getSFuncName()Ljava/lang/String;
.end method

.method public abstract getSFuncNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getSServantName()Ljava/lang/String;
.end method

.method public abstract getSServantNameBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract hasRequest()Z
.end method

.method public abstract hasResponse()Z
.end method
