.class public Lcom/intlgame/api/analytics/INTLAutoEventResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLAutoEventResult.java"


# instance fields
.field public auto_event_info_:Ljava/util/List;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "com.intlgame.api.analytics.INTLAutoEventInfo"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/api/analytics/INTLAutoEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public channelid_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "channelid"
    .end annotation
.end field

.field public count_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "count"
    .end annotation
.end field

.field public openid_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "openid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/intlgame/api/INTLResult;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
