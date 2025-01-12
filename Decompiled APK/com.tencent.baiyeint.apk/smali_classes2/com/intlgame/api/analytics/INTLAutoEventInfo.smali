.class public Lcom/intlgame/api/analytics/INTLAutoEventInfo;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLAutoEventInfo.java"


# instance fields
.field public channel_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "channel"
    .end annotation
.end field

.field public event_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "event"
    .end annotation
.end field

.field public id_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "id"
    .end annotation
.end field

.field public params_:Ljava/util/List;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "com.intlgame.api.analytics.INTLAutoEventParam"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "params"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/api/analytics/INTLAutoEventParam;",
            ">;"
        }
    .end annotation
.end field

.field public ts_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "ts"
    .end annotation
.end field

.field public type_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
