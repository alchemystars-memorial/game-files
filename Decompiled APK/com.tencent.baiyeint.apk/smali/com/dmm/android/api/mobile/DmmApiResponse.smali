.class public Lcom/dmm/android/api/mobile/DmmApiResponse;
.super Ljava/lang/Object;
.source "DmmApiResponse.java"


# instance fields
.field protected mErrorMessage:Ljava/lang/String;

.field protected mErrorNo:I

.field protected mResultCode:Ljava/lang/String;

.field protected mResultJson:Ljava/util/Map;
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
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mResultCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mResultJson:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mErrorNo:I

    iput-object p4, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNo()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mErrorNo:I

    return v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultJson()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mResultJson:Ljava/util/Map;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmApiResponse;->mResultCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
