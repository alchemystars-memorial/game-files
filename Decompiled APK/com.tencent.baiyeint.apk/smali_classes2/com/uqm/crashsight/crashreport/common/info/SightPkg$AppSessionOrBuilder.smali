.class public interface abstract Lcom/uqm/crashsight/crashreport/common/info/SightPkg$AppSessionOrBuilder;
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
    name = "AppSessionOrBuilder"
.end annotation


# virtual methods
.method public abstract getEvents(I)Ljava/lang/String;
.end method

.method public abstract getEventsBytes(I)Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method public abstract getEventsCount()I
.end method

.method public abstract getEventsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionIdBytes()Lcom/uqm/crashsight/protobuf/ByteString;
.end method
