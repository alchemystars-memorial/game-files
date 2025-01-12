.class public final Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;
.super Ljava/lang/Object;
.source "FlexSeparatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;->color:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$1;)V

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;->color:Ljava/lang/String;

    return-object p0
.end method

.method public setMargin(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexSeparatorComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method
