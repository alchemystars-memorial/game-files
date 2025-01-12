.class public final Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
.super Ljava/lang/Object;
.source "FlexIconComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$1;)V

    return-object v0
.end method

.method public setAspectRatio(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;)Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object p0
.end method

.method public setMargin(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;)Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method public setSize(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;)Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method
