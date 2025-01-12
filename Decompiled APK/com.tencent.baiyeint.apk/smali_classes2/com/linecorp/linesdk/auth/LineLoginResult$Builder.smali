.class public final Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
.super Ljava/lang/Object;
.source "LineLoginResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private errorData:Lcom/linecorp/linesdk/LineApiError;

.field private friendshipStatusChanged:Ljava/lang/Boolean;

.field private lineCredential:Lcom/linecorp/linesdk/LineCredential;

.field private lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

.field private lineProfile:Lcom/linecorp/linesdk/LineProfile;

.field private nonce:Ljava/lang/String;

.field private responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->SUCCESS:Lcom/linecorp/linesdk/LineApiResponseCode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError;->DEFAULT:Lcom/linecorp/linesdk/LineApiError;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method static synthetic access$100(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiResponseCode;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineProfile;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    return-object p0
.end method

.method static synthetic access$400(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object p0
.end method

.method static synthetic access$500(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->friendshipStatusChanged:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineCredential;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    return-object p0
.end method

.method static synthetic access$700(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)Lcom/linecorp/linesdk/LineApiError;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;Lcom/linecorp/linesdk/auth/LineLoginResult$1;)V

    return-object v0
.end method

.method public errorData(Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->errorData:Lcom/linecorp/linesdk/LineApiError;

    return-object p0
.end method

.method public friendshipStatusChanged(Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->friendshipStatusChanged:Ljava/lang/Boolean;

    return-object p0
.end method

.method public lineCredential(Lcom/linecorp/linesdk/LineCredential;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineCredential:Lcom/linecorp/linesdk/LineCredential;

    return-object p0
.end method

.method public lineIdToken(Lcom/linecorp/linesdk/LineIdToken;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineIdToken:Lcom/linecorp/linesdk/LineIdToken;

    return-object p0
.end method

.method public lineProfile(Lcom/linecorp/linesdk/LineProfile;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->lineProfile:Lcom/linecorp/linesdk/LineProfile;

    return-object p0
.end method

.method public nonce(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->nonce:Ljava/lang/String;

    return-object p0
.end method

.method public responseCode(Lcom/linecorp/linesdk/LineApiResponseCode;)Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->responseCode:Lcom/linecorp/linesdk/LineApiResponseCode;

    return-object p0
.end method
