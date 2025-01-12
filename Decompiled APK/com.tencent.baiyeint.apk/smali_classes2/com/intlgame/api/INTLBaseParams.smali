.class public Lcom/intlgame/api/INTLBaseParams;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLBaseParams.java"


# instance fields
.field public channel_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "channel"
    .end annotation
.end field

.field public extra_json_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "extraJson"
    .end annotation
.end field

.field public method_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "methodID"
    .end annotation
.end field

.field public seq_id_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "seqID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method
