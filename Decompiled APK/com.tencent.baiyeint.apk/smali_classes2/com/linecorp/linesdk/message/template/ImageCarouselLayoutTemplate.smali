.class public Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate;
.super Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.source "ImageCarouselLayoutTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;
    }
.end annotation


# instance fields
.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate$ImageCarouselColumn;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->IMAGE_CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;-><init>(Lcom/linecorp/linesdk/message/template/Type;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate;->columns:Ljava/util/List;

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

    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ImageCarouselLayoutTemplate;->columns:Ljava/util/List;

    const-string v2, "columns"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
