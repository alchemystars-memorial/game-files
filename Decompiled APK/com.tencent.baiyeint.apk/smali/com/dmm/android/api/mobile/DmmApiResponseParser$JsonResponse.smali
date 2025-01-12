.class Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;
.super Ljava/lang/Object;
.source "DmmApiResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/mobile/DmmApiResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonResponse"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorNo:I

.field private result:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dmm/android/api/mobile/DmmApiResponseParser$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->result:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)I
    .locals 0

    iget p0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->errorNo:I

    return p0
.end method

.method static synthetic access$300(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->errorMessage:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNo()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->errorNo:I

    return v0
.end method

.method public getResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->result:Ljava/util/Map;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setErrorNo(I)V
    .locals 0

    iput p1, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->errorNo:I

    return-void
.end method

.method public setResult(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->result:Ljava/util/Map;

    return-void
.end method
