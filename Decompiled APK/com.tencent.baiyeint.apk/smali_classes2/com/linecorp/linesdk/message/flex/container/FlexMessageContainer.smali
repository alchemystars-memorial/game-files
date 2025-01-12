.class public abstract Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;
.super Ljava/lang/Object;
.source "FlexMessageContainer.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;
    }
.end annotation


# instance fields
.field protected final type:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->type:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->type:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
