.class public Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TDMNetworkReceiver.java"


# instance fields
.field private LastNet:Lcom/tdatamaster/tdm/system/NetworkType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    iput-object v0, p0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;->LastNet:Lcom/tdatamaster/tdm/system/NetworkType;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMSystem;->getInstance()Lcom/tdatamaster/tdm/system/TDMSystem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetNetworkType(Landroid/content/Context;)Lcom/tdatamaster/tdm/system/NetworkType;

    move-result-object p1

    iget-object p2, p0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;->LastNet:Lcom/tdatamaster/tdm/system/NetworkType;

    if-eq p1, p2, :cond_0

    iput-object p1, p0, Lcom/tdatamaster/tdm/system/TDMNetworkReceiver;->LastNet:Lcom/tdatamaster/tdm/system/NetworkType;

    invoke-static {}, Lcom/tdatamaster/tdm/system/TDMUtils;->GetInstance()Lcom/tdatamaster/tdm/system/TDMUtils;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tdatamaster/tdm/system/NetworkType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/tdatamaster/tdm/system/TDMUtils;->OnNetworkChanged(IZ)V

    :cond_0
    return-void
.end method
