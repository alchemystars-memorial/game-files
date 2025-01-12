.class public final Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
.super Ljava/lang/Object;
.source "FlexTextComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;

.field private align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

.field private color:Ljava/lang/String;

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private maxLines:I

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field private text:Ljava/lang/String;

.field private weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

.field private wrap:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->flex:I

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->maxLines:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->text:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->flex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->wrap:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->maxLines:I

    return p0
.end method

.method static synthetic access$800(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    return-object p0
.end method

.method static synthetic access$900(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->color:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$1;)V

    return-object v0
.end method

.method public setAction(Lcom/linecorp/linesdk/message/flex/action/Action;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-object p0
.end method

.method public setAlign(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    return-object p0
.end method

.method public setColor(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->color:Ljava/lang/String;

    return-object p0
.end method

.method public setFlex(I)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->flex:I

    return-object p0
.end method

.method public setGravity(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-object p0
.end method

.method public setMargin(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method public setMaxLines(I)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->maxLines:I

    return-object p0
.end method

.method public setSize(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method

.method public setWeight(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    return-object p0
.end method

.method public setWrap(Ljava/lang/Boolean;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->wrap:Ljava/lang/Boolean;

    return-object p0
.end method
