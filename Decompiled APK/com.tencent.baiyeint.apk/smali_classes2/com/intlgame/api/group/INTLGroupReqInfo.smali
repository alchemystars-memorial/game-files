.class public Lcom/intlgame/api/group/INTLGroupReqInfo;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLGroupReqInfo.java"


# instance fields
.field public guildId:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "guildId"
    .end annotation
.end field

.field public worldId:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "worldId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method
