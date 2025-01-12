.class public Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;
.super Ljava/lang/Object;
.source "DmmGamesSendUsageLogRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;,
        Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;,
        Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;
    }
.end annotation


# instance fields
.field private error:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private event:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "event"
    .end annotation
.end field

.field private sdkInfo:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "sdk_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;-><init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;-><init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->sdkInfo:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    iput-object p2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->event:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    iput-object p3, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->error:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    return-void
.end method


# virtual methods
.method public clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->sdkInfo:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->event:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->error:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    move-result-object v1

    :cond_2
    new-instance v3, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    invoke-direct {v3, v0, v2, v1}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;-><init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V

    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    move-result-object v0

    return-object v0
.end method

.method public setError(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->error:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    return-void
.end method

.method public setEvent(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->event:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    return-void
.end method

.method public setSdkInfo(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->sdkInfo:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    return-void
.end method
