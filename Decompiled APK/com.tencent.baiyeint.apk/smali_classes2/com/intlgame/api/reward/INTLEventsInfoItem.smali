.class public Lcom/intlgame/api/reward/INTLEventsInfoItem;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLEventsInfoItem.java"


# instance fields
.field public can_send_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "can_send"
    .end annotation
.end field

.field public event_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "event_id"
    .end annotation
.end field

.field public is_sent_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "is_sent"
    .end annotation
.end field

.field rewards_:Ljava/util/ArrayList;
    .annotation runtime Lcom/intlgame/tools/json/JsonList;
        value = "com.intlgame.api.reward.INTLRewardItem"
    .end annotation

    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "rewards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/intlgame/api/reward/INTLRewardItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intlgame/api/reward/INTLEventsInfoItem;->can_send_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/intlgame/api/reward/INTLEventsInfoItem;->is_sent_:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTLEventsInfoItem{, can_send_=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/api/reward/INTLEventsInfoItem;->can_send_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_sent_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/reward/INTLEventsInfoItem;->is_sent_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",event_id_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/intlgame/api/reward/INTLEventsInfoItem;->event_id_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",rewards_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/api/reward/INTLEventsInfoItem;->rewards_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
