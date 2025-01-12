.class Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;
.super Ljava/lang/Object;
.source "DmmConfigGetResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaintenanceInfo"
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->flag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->flag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse$MaintenanceInfo;->message:Ljava/lang/String;

    return-object p1
.end method
