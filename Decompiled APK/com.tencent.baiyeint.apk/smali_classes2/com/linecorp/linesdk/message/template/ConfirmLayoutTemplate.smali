.class public Lcom/linecorp/linesdk/message/template/ConfirmLayoutTemplate;
.super Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.source "ConfirmLayoutTemplate.java"


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

.field private text:Ljava/lang/String;


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

    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->CONFIRM:Lcom/linecorp/linesdk/message/template/Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;-><init>(Lcom/linecorp/linesdk/message/template/Type;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ConfirmLayoutTemplate;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/ConfirmLayoutTemplate;->actions:Ljava/util/List;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ConfirmLayoutTemplate;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/template/ConfirmLayoutTemplate;->actions:Ljava/util/List;

    const-string v2, "actions"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
