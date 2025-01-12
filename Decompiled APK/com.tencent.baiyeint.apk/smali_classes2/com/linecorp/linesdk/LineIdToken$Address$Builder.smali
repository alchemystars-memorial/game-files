.class public final Lcom/linecorp/linesdk/LineIdToken$Address$Builder;
.super Ljava/lang/Object;
.source "LineIdToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/LineIdToken$Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private locality:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->streetAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->locality:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->postalCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->country:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/LineIdToken$Address;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/LineIdToken$Address;-><init>(Lcom/linecorp/linesdk/LineIdToken$Address$Builder;Lcom/linecorp/linesdk/LineIdToken$1;)V

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public locality(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->locality:Ljava/lang/String;

    return-object p0
.end method

.method public postalCode(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->postalCode:Ljava/lang/String;

    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public streetAddress(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->streetAddress:Ljava/lang/String;

    return-object p0
.end method
