.class public Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;
.super Ljava/lang/Object;
.source "DmmGamesSendUsageLogRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkInfo"
.end annotation


# instance fields
.field private final appId:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field private final isEmulator:Z
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "is_emulator"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private final userUuid:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "user_uuid"
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "ver"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->userUuid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->isEmulator:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;
    .locals 7

    new-instance v6, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    iget-object v1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->version:Ljava/lang/String;

    iget-object v3, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->userUuid:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->isEmulator:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    move-result-object v0

    return-object v0
.end method
