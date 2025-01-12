.class public final Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
.super Ljava/lang/Object;
.source "IdTokenValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private expectedChannelId:Ljava/lang/String;

.field private expectedIssuer:Ljava/lang/String;

.field private expectedNonce:Ljava/lang/String;

.field private expectedUserId:Ljava/lang/String;

.field private idToken:Lcom/linecorp/linesdk/LineIdToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object p0
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedIssuer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedNonce:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;-><init>(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$1;)V

    return-object v0
.end method

.method public expectedChannelId(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public expectedIssuer(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedIssuer:Ljava/lang/String;

    return-object p0
.end method

.method public expectedNonce(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedNonce:Ljava/lang/String;

    return-object p0
.end method

.method public expectedUserId(Ljava/lang/String;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->expectedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public idToken(Lcom/linecorp/linesdk/LineIdToken;)Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->idToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object p0
.end method
