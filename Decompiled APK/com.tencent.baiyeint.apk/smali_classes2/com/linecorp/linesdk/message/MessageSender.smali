.class public Lcom/linecorp/linesdk/message/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# instance fields
.field private final footerIconUrl:Ljava/lang/String;

.field private final footerLinkUrl:Ljava/lang/String;

.field private final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/MessageSender;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerIconUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerLinkUrl:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/MessageSender;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerIconUrl:Ljava/lang/String;

    const-string v2, "iconUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerLinkUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "linkUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
