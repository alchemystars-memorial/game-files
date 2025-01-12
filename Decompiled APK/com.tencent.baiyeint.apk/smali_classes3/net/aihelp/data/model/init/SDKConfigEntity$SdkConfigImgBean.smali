.class public Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;
.super Ljava/lang/Object;
.source "SDKConfigEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/init/SDKConfigEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkConfigImgBean"
.end annotation


# instance fields
.field private Customer_Avatar:Ljava/lang/String;

.field private Player_Avatar:Ljava/lang/String;

.field private Robot_Avatar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomer_Avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;->Customer_Avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer_Avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;->Player_Avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getRobot_Avatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;->Robot_Avatar:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomer_Avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;->Customer_Avatar:Ljava/lang/String;

    return-void
.end method

.method public setPlayer_Avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;->Player_Avatar:Ljava/lang/String;

    return-void
.end method

.method public setRobot_Avatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigImgBean;->Robot_Avatar:Ljava/lang/String;

    return-void
.end method
