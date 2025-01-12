.class public Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;
.super Ljava/lang/Object;
.source "FlexBlockStyle.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private separator:Z

.field private separatorColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->backgroundColor:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separator:Z

    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separatorColor:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->backgroundColor:Ljava/lang/String;

    const-string v2, "backgroundColor"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "separator"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separatorColor:Ljava/lang/String;

    const-string v2, "separatorColor"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
