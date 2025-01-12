.class public Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;
.super Ljava/lang/Object;
.source "CarouselLayoutTemplate.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarouselColumn"
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

.field private imageBackgroundColor:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private thumbnailImageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setDefaultAction(Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method

.method public setImageBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->imageBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->thumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->title:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->actions:Ljava/util/List;

    const-string v2, "actions"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->thumbnailImageUrl:Ljava/lang/String;

    const-string v2, "thumbnailImageUrl"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->imageBackgroundColor:Ljava/lang/String;

    const-string v2, "imageBackgroundColor"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    const-string v2, "defaultAction"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
