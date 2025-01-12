.class public Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
.super Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;
.source "FlexBubbleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;,
        Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;,
        Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
    }
.end annotation


# instance fields
.field private body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

.field private direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

.field private footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

.field private header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

.field private hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

.field private styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;->BUBBLE:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;)V

    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->LEFT_TO_RIGHT:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$1;)V

    return-object v0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "direction"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    const-string v2, "header"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    const-string v2, "hero"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    const-string v2, "body"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    const-string v2, "footer"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    const-string v2, "styles"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
