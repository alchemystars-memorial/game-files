.class public Lcom/gamesafe/ano/AnoSdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesafe/ano/AnoSdk$ISendDataToSvr;
    }
.end annotation


# static fields
.field public static final ANO_SDK_VERSION:Ljava/lang/String; = "5.1.11(2020/11/10)-jar-version"

.field public static final ENTRT_ID_FACEBOOK:I = 0x3

.field public static final ENTRY_ID_APPLE:I = 0xb

.field public static final ENTRY_ID_EA:I = 0x14

.field public static final ENTRY_ID_GAMECENTER:I = 0x7

.field public static final ENTRY_ID_GARENA:I = 0xe

.field public static final ENTRY_ID_GOOGLEPLAY:I = 0x8

.field public static final ENTRY_ID_HUAWEI:I = 0xf

.field public static final ENTRY_ID_KUAISHOU:I = 0xa

.field public static final ENTRY_ID_LINE:I = 0x5

.field public static final ENTRY_ID_MICROSOFT:I = 0x13

.field public static final ENTRY_ID_MM:I = 0x2

.field public static final ENTRY_ID_NAVER:I = 0xd

.field public static final ENTRY_ID_NEXON:I = 0xc

.field public static final ENTRY_ID_NINTENDO:I = 0x11

.field public static final ENTRY_ID_OTHERS:I = 0x63

.field public static final ENTRY_ID_PSN:I = 0x12

.field public static final ENTRY_ID_Q:I = 0x1

.field public static final ENTRY_ID_RIOT:I = 0x10

.field public static final ENTRY_ID_TWITTER:I = 0x4

.field public static final ENTRY_ID_VK:I = 0x9

.field public static final ENTRY_ID_WHATSAPP:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "anogs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decAnoInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "dec_tss_info:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gamesafe/ano/AnoSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReportData()[B
    .locals 2

    new-instance v0, Lcom/gamesafe/ano/AnoIOCtlResult;

    invoke-direct {v0}, Lcom/gamesafe/ano/AnoIOCtlResult;-><init>()V

    const-string v1, "bzo_mzkjmo_yvov"

    invoke-static {v1}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gamesafe/ano/AnoIOCtlResult;->cmd:Ljava/lang/String;

    invoke-static {v0}, Lcom/gamesafe/ano/AnoSdk;->getsdkantidata(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/gamesafe/ano/AnoIOCtlResult;->data:[B

    return-object v0
.end method

.method public static native getsdkantidata(Ljava/lang/Object;)I
.end method

.method public static native hasMatchRate(I)I
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 0

    new-instance p0, Lcom/gamesafe/ano/AnoSdkInitInfo;

    invoke-direct {p0}, Lcom/gamesafe/ano/AnoSdkInitInfo;-><init>()V

    iput p1, p0, Lcom/gamesafe/ano/AnoSdkInitInfo;->game_id:I

    invoke-static {p0}, Lcom/gamesafe/ano/AnoSdk;->init(Ljava/lang/Object;)V

    return-void
.end method

.method public static native init(Ljava/lang/Object;)V
.end method

.method public static ioctl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/gamesafe/ano/AnoIOCtlResult;

    invoke-direct {v1}, Lcom/gamesafe/ano/AnoIOCtlResult;-><init>()V

    iput-object p0, v1, Lcom/gamesafe/ano/AnoIOCtlResult;->cmd:Ljava/lang/String;

    invoke-static {v1}, Lcom/gamesafe/ano/AnoSdk;->getsdkantidata(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, v1, Lcom/gamesafe/ano/AnoIOCtlResult;->response:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static onPause()V
    .locals 2

    new-instance v0, Lcom/gamesafe/ano/AnoSdkGameStatusInfo;

    invoke-direct {v0}, Lcom/gamesafe/ano/AnoSdkGameStatusInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/gamesafe/ano/AnoSdkGameStatusInfo;->game_status:I

    invoke-static {v0}, Lcom/gamesafe/ano/AnoSdk;->setgamestatus(Ljava/lang/Object;)V

    return-void
.end method

.method public static onRecvData([B)V
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/gamesafe/ano/AnoSdk;->senddatatosdk([BI)V

    return-void
.end method

.method public static onResume()V
    .locals 2

    new-instance v0, Lcom/gamesafe/ano/AnoSdkGameStatusInfo;

    invoke-direct {v0}, Lcom/gamesafe/ano/AnoSdkGameStatusInfo;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/gamesafe/ano/AnoSdkGameStatusInfo;->game_status:I

    invoke-static {v0}, Lcom/gamesafe/ano/AnoSdk;->setgamestatus(Ljava/lang/Object;)V

    return-void
.end method

.method public static native onruntimeinfo([BI)V
.end method

.method public static registAnoInfoReceiver(Lcom/gamesafe/ano/AnoInfoPublisher$AnoInfoReceiver;)V
    .locals 1

    invoke-static {}, Lcom/gamesafe/ano/AnoInfoPublisher;->getInstance()Lcom/gamesafe/ano/AnoInfoPublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gamesafe/ano/AnoInfoPublisher;->registAnoInfoReceiver(Lcom/gamesafe/ano/AnoInfoPublisher$AnoInfoReceiver;)V

    return-void
.end method

.method public static native senddatatosdk([BI)V
.end method

.method public static native senddatatosvr([BI)V
.end method

.method public static setUserInfo(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/gamesafe/ano/AnoSdkUserInfo;

    invoke-direct {v0}, Lcom/gamesafe/ano/AnoSdkUserInfo;-><init>()V

    iput p0, v0, Lcom/gamesafe/ano/AnoSdkUserInfo;->entry_id:I

    const/4 p0, 0x2

    iput p0, v0, Lcom/gamesafe/ano/AnoSdkUserInfo;->uin_type:I

    iput-object p1, v0, Lcom/gamesafe/ano/AnoSdkUserInfo;->uin_str:Ljava/lang/String;

    iput p0, v0, Lcom/gamesafe/ano/AnoSdkUserInfo;->app_id_type:I

    const-string p0, ""

    iput-object p0, v0, Lcom/gamesafe/ano/AnoSdkUserInfo;->app_id_str:Ljava/lang/String;

    invoke-static {v0}, Lcom/gamesafe/ano/AnoSdk;->setuserinfo(Ljava/lang/Object;)V

    return-void
.end method

.method public static native setgamestatus(Ljava/lang/Object;)V
.end method

.method public static native setsenddatatosvrcb(Ljava/lang/Object;)V
.end method

.method public static native setuserinfo(Ljava/lang/Object;)V
.end method

.method public static native setuserinfoex(Ljava/lang/Object;)V
.end method
