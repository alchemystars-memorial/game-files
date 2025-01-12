.class Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;
.super Ljava/lang/Object;
.source "DmmMakeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestInternal"
.end annotation


# instance fields
.field private callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

.field private request:Lcom/dmm/games/android/volley/Request;

.field private statusCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/games/android/volley/Request;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->request:Lcom/dmm/games/android/volley/Request;

    return-object p0
.end method

.method static synthetic access$302(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->request:Lcom/dmm/games/android/volley/Request;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)I
    .locals 0

    iget p0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->statusCode:I

    return p0
.end method

.method static synthetic access$402(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;I)I
    .locals 0

    iput p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->statusCode:I

    return p1
.end method
