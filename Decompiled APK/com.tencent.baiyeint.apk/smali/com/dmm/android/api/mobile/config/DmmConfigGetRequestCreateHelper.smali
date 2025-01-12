.class public Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;
.super Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;
.source "DmmConfigGetRequestCreateHelper.java"


# static fields
.field public static final CONFIG_GET_COMMAND:Ljava/lang/String; = "Config.Get"

.field public static final PARAMETER_DEVICE:Ljava/lang/String; = "device"


# instance fields
.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;->mParams:Ljava/util/Map;

    if-eqz p2, :cond_0

    const-string p2, "device"

    const-string v0, "emulator"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "Config.Get"

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dmm/android/api/mobile/config/DmmConfigGetRequestCreateHelper;->mParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/mobile/DmmApiResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;

    return-object v0
.end method
