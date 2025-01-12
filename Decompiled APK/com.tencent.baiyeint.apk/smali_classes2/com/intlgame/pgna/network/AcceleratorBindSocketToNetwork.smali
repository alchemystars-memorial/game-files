.class public Lcom/intlgame/pgna/network/AcceleratorBindSocketToNetwork;
.super Ljava/lang/Object;
.source "AcceleratorBindSocketToNetwork.java"


# static fields
.field public static final NetworkBindSocketFail:I = 0x1

.field public static final NetworkBindSocketSuccess:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindSocketToNetwork(II)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    invoke-static {v1}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    invoke-virtual {v1}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->getWifiNetwork()Landroid/net/Network;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-class v1, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    invoke-static {v1}, Lcom/intlgame/foundation/Singleton;->getSingleton(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    invoke-virtual {v1}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->getCellularNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_7

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PGNA] bindSocketToNetwork cellular fail reason is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PGNA] bindSocketToNetwork wifi fail reason is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    if-eqz v1, :cond_a

    if-nez p1, :cond_4

    const-string p1, "[PGNA] bindSocketToNetwork cellular success"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_5

    const-string p1, "[PGNA] bindSocketToNetwork wifi success"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return v3

    :cond_6
    const-string p1, "[PGNA] fileDescriptor == null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    goto :goto_4

    :cond_7
    const-string p1, "[PGNA] parcelFileDescriptor == null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    if-nez p1, :cond_9

    const-string p1, "[PGNA] bindSocketToNetwork cellular network can\'t use"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    if-ne p1, v0, :cond_a

    const-string p1, "[PGNA] bindSocketToNetwork wifi network can\'t use"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :cond_a
    :goto_4
    return v0
.end method

.method public isApiLevelLessThan23()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
