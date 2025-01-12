.class public Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;
.super Ljava/lang/Object;
.source "DmmGamesSendUsageLogRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field private final errorName:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "error_name"
    .end annotation
.end field

.field private final errorNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "error_number"
    .end annotation
.end field

.field private final httpStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "http_status"
    .end annotation
.end field

.field private final kind:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field private final rawJson:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "raw_json"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->kind:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->errorName:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->errorNumber:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->httpStatus:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->rawJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;
    .locals 7

    new-instance v6, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    iget-object v1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->kind:Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->errorName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->errorNumber:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->httpStatus:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->rawJson:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    move-result-object v0

    return-object v0
.end method
