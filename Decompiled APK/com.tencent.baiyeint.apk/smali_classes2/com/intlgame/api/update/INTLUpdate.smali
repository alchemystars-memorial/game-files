.class public Lcom/intlgame/api/update/INTLUpdate;
.super Ljava/lang/Object;
.source "INTLUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkOptionalRepoFiles(JLjava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;",
            ">;"
        }
    .end annotation
.end method

.method public static native continueUpdate(J)Z
.end method

.method public static native downloadOptionalRepoFiles(JILjava/util/Set;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native getCurrentAppVersion()Ljava/lang/String;
.end method

.method public static native getCurrentResourceVersion()Ljava/lang/String;
.end method

.method public static native getDownloadingTaskCount()I
.end method

.method public static native modifyDownloadPriority(JII)Z
.end method

.method public static native setBackgroundUpdateNotificationTitle(Ljava/lang/String;)V
.end method

.method public static native setMaxDownloadSpeed(I)V
.end method

.method public static native setUpdateObserver(Lcom/intlgame/api/update/INTLUpdateObserver;)V
.end method

.method public static native setUpdateObserverForBackgroundDownload(Lcom/intlgame/api/update/INTLUpdateObserver;)V
.end method

.method public static native startUpdate(IJILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native stopUpdate(JI)Z
.end method

.method public static native toggleBackgroundUpdate(Z)V
.end method
