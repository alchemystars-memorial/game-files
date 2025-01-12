.class public Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;
.super Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;
.source "FlexCarouselContainer.java"


# instance fields
.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;->CAROUSEL:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;->contents:Ljava/util/List;

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

    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;->contents:Ljava/util/List;

    const-string v2, "contents"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
