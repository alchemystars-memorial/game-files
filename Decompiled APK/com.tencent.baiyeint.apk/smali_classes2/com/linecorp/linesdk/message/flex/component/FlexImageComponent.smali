.class public Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    }
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;

.field private align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

.field private aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

.field private aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field private backgroundColor:Ljava/lang/String;

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->CENTER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;->TOP:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->flex:I

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$600(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$700(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$800(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->backgroundColor:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$900(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;-><init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$1;)V

    return-object v0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "flex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v2, "margin"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    const-string v2, "align"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    const-string v2, "gravity"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "size"

    invoke-static {v0, v3, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, "aspectRatio"

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    const-string v2, "aspectMode"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->backgroundColor:Ljava/lang/String;

    const-string v2, "backgroundColor"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    const-string v2, "action"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
