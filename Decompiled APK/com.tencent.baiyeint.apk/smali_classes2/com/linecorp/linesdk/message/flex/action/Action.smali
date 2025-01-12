.class public abstract Lcom/linecorp/linesdk/message/flex/action/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;

.field protected final type:Lcom/linecorp/linesdk/message/flex/action/Action$Type;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/message/flex/action/Action;-><init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->type:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    iput-object p2, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->label:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->type:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
