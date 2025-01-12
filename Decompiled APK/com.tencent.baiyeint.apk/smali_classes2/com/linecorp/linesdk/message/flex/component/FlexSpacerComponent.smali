.class public Lcom/linecorp/linesdk/message/flex/component/FlexSpacerComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexSpacerComponent.java"


# instance fields
.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SPACER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method


# virtual methods
.method public setSize(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSpacerComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSpacerComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v2, "size"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
