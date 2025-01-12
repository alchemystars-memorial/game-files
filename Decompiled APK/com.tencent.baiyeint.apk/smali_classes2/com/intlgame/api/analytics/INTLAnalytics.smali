.class public Lcom/intlgame/api/analytics/INTLAnalytics;
.super Ljava/lang/Object;
.source "INTLAnalytics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native PostFrameTimeInSession(F)V
.end method

.method public static native PostNetworkLatencyInSession(I)V
.end method

.method public static native SetCollectionStop(Z)V
.end method

.method public static native attachmentMessageForException()Ljava/lang/String;
.end method

.method public static native flushINTLEvents()V
.end method

.method public static native getDeviceLevel()I
.end method

.method public static native getInstallationID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getInstanceID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native init()V
.end method

.method public static native logCrashInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native markAPASSessionClosed()V
.end method

.method public static native markAPASSessionLoad(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native queryDeviceLevel()V
.end method

.method public static native reportBinary(Ljava/lang/String;[BILjava/lang/String;)V
.end method

.method public static native reportCustomEventStep(Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;)V
.end method

.method public static native reportEvent(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static native reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static native reportLoginStep(ILjava/lang/String;ZILjava/lang/String;)V
.end method

.method public static native reportPayStep(ILjava/lang/String;ZILjava/lang/String;)V
.end method

.method public static native reportRevenue(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static native restartAnalytics()V
.end method

.method public static native setAPASSessionExtraParam(Ljava/lang/String;)V
.end method

.method public static native setCrashObserver(Lcom/intlgame/api/analytics/INTLCrashObserver;)V
.end method

.method public static native setCrashUserId(Ljava/lang/String;)V
.end method

.method public static native setCrashUserValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setDeviceInfoModuleEnabled(Z)V
.end method

.method public static native setDeviceLevel(I)V
.end method

.method public static native setDeviceLevelObserver(Lcom/intlgame/api/analytics/INTLDeviceLevelObserver;)V
.end method

.method public static native startTraceRoute(Ljava/lang/String;)V
.end method

.method public static native stopAnalytics()V
.end method

.method public static native stopTraceRoute()Ljava/lang/String;
.end method

.method public static native tabGetExpInfoByLayerCode(Ljava/lang/String;Z)Lcom/intlgame/api/analytics/INTLTabExpInfo;
.end method

.method public static native tabGetExpInfoByName(Ljava/lang/String;Z)Lcom/intlgame/api/analytics/INTLTabExpInfo;
.end method

.method public static native tabInit(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public static native tabRefresh()V
.end method

.method public static native tabStart()V
.end method

.method public static native tabSwitchGuid(Ljava/lang/String;)V
.end method

.method public static native testJudgeCustomDeviceLevel(Ljava/lang/String;)I
.end method
