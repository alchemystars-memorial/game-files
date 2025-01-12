.class public Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexButtonComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    }
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;

.field private color:Ljava/lang/String;

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

.field private height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->flex:I

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->color:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$600(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Lcom/linecorp/linesdk/message/flex/action/Action;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/action/Action;Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$1;)V

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

    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    const-string v2, "action"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v2, "margin"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    const-string v2, "style"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->color:Ljava/lang/String;

    const-string v2, "color"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    const-string v2, "gravity"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "flex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
