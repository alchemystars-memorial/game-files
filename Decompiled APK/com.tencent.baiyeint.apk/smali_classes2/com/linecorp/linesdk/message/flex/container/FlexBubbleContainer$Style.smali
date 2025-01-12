.class public Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;
.super Ljava/lang/Object;
.source "FlexBubbleContainer.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# instance fields
.field private body:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

.field private footer:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

.field private header:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

.field private hero:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->header:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    const-string v2, "header"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->hero:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    const-string v2, "hero"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->body:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    const-string v2, "body"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->footer:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    const-string v2, "footer"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
