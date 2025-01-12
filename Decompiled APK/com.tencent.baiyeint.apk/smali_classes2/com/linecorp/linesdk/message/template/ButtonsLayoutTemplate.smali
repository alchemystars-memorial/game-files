.class public Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;
.super Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.source "ButtonsLayoutTemplate.java"


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

.field private imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

.field private imageBackgroundColor:I

.field private imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

.field private messageSender:Lcom/linecorp/linesdk/message/MessageSender;

.field private text:Ljava/lang/String;

.field private thumbnailImageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;-><init>(Lcom/linecorp/linesdk/message/template/Type;)V

    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->COVER:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->actions:Ljava/util/List;

    return-void
.end method

.method private getColorString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "#%06X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setDefaultAction(Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method

.method public setImageAspectRatio(Lcom/linecorp/linesdk/message/template/ImageAspectRatio;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    return-void
.end method

.method public setImageScaleType(Lcom/linecorp/linesdk/message/template/ImageScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    return-void
.end method

.method public setMessageSender(Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->messageSender:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->thumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->title:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->thumbnailImageUrl:Ljava/lang/String;

    const-string v2, "thumbnailImageUrl"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->getServerKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageAspectRatio"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/template/ImageScaleType;->getServerKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageSize"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->getColorString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageBackgroundColor"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    const-string v2, "defaultAction"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->messageSender:Lcom/linecorp/linesdk/message/MessageSender;

    const-string v2, "sentBy"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->actions:Ljava/util/List;

    const-string v2, "actions"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
