.class public Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;
.super Ljava/lang/Object;
.source "DmmGamesSendUsageLogRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field private final kind:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "kind"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/dmm/games/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;->kind:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;
    .locals 3

    new-instance v0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    iget-object v1, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;->kind:Ljava/lang/String;

    iget-object v2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    move-result-object v0

    return-object v0
.end method
