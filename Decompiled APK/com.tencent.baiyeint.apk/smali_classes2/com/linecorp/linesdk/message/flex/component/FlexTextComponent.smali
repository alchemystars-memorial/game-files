.class public Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexTextComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    }
.end annotation


# static fields
.field protected static final MAXLINES_VALUE_NONE:I = -0x1


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;

.field private align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

.field private color:Ljava/lang/String;

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private maxLines:I

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field private text:Ljava/lang/String;

.field private weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

.field private wrap:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->flex:I

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$600(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->wrap:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$700(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->maxLines:I

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$800(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$900(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->color:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$1000(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;-><init>(Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v2, "margin"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "size"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    const-string v2, "align"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    const-string v2, "gravity"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->wrap:Ljava/lang/Boolean;

    const-string v2, "wrap"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    const-string v2, "weight"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->color:Ljava/lang/String;

    const-string v2, "color"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    const-string v2, "action"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v3, "flex"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->maxLines:I

    if-eq v1, v2, :cond_2

    const-string v2, "maxLines"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method
