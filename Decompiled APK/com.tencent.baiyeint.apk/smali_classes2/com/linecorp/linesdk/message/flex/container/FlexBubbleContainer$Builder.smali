.class public final Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
.super Ljava/lang/Object;
.source "FlexBubbleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

.field private direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

.field private footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

.field private header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

.field private hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

.field private styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$1;)V

    return-object v0
.end method

.method public setBody(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    return-object p0
.end method

.method public setDirection(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-object p0
.end method

.method public setFooter(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    return-object p0
.end method

.method public setHeader(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    return-object p0
.end method

.method public setHero(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    return-object p0
.end method

.method public setStyles(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    return-object p0
.end method
