.class public Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexIconComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    }
.end annotation


# instance fields
.field private aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;-><init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$1;)V

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v2, "margin"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v2, "size"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "aspectRatio"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
