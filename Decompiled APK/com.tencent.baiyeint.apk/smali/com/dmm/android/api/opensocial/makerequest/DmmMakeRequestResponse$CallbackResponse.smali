.class public Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;
.super Ljava/lang/Object;
.source "DmmMakeRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackResponse"
.end annotation


# instance fields
.field private mBody:Ljava/lang/Object;

.field private mCode:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mBody:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$202(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;I)I
    .locals 0

    iput p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mHeaders:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mCode:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->mCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
