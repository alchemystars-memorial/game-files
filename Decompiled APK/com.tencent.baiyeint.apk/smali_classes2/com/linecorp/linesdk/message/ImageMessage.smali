.class public Lcom/linecorp/linesdk/message/ImageMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "ImageMessage.java"


# instance fields
.field private animated:Ljava/lang/Boolean;

.field private extension:Ljava/lang/String;

.field private fileSize:Ljava/lang/Long;

.field private final originalContentUrl:Ljava/lang/String;

.field private final previewImageUrl:Ljava/lang/String;

.field private sentBy:Lcom/linecorp/linesdk/message/MessageSender;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/ImageMessage;->animated:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->originalContentUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->previewImageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/Type;->IMAGE:Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method

.method public setAnimated(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->animated:Ljava/lang/Boolean;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->fileSize:Ljava/lang/Long;

    return-void
.end method

.method public setSentBy(Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->sentBy:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->originalContentUrl:Ljava/lang/String;

    const-string v2, "originalContentUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->previewImageUrl:Ljava/lang/String;

    const-string v2, "previewImageUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->animated:Ljava/lang/Boolean;

    const-string v2, "animated"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->extension:Ljava/lang/String;

    const-string v2, "extension"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->fileSize:Ljava/lang/Long;

    const-string v2, "fileSize"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->sentBy:Lcom/linecorp/linesdk/message/MessageSender;

    const-string v2, "sentBy"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
