.class public Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexSeparatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;
    }
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->SEPARATOR:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;-><init>()V

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;->color:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$1;)V

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

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v2, "margin"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;->color:Ljava/lang/String;

    const-string v2, "color"

    invoke-static {v0, v2, v1}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
