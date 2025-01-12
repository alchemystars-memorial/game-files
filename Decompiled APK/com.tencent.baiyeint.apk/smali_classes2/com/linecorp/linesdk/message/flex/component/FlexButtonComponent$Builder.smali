.class public final Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
.super Ljava/lang/Object;
.source "FlexButtonComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;

.field private color:Ljava/lang/String;

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

.field private height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/action/Action;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->flex:I

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/action/Action;Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/action/Action;)V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->flex:I

    return p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->color:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$1;)V

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->color:Ljava/lang/String;

    return-object p0
.end method

.method public setFlex(I)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 0

    iput p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->flex:I

    return-object p0
.end method

.method public setGravity(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-object p0
.end method

.method public setHeight(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    return-object p0
.end method

.method public setMargin(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method public setStyle(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    return-object p0
.end method
