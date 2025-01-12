.class public interface abstract Lcom/uqm/crashsight/core/crash/CrashInterface;
.super Ljava/lang/Object;
.source "CrashSight"


# virtual methods
.method public abstract closeCrashReport()V
.end method

.method public abstract configCallbackTypeBeforeInit(I)V
.end method

.method public abstract configCrashHandleTimeout(I)V
.end method

.method public abstract configCrashReporterLogLevelBeforeInit(I)V
.end method

.method public abstract configCrashServerUrlBeforeInit(Ljava/lang/String;)V
.end method

.method public abstract configDebugModeBeforeInit(Z)V
.end method

.method public abstract configDefaultBeforeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract getCrashThreadId()J
.end method

.method public abstract init(Ljava/lang/String;ZZLjava/lang/String;)V
.end method

.method public abstract initWithAppId(Ljava/lang/String;)V
.end method

.method public abstract logInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract printLog(ILjava/lang/String;)V
.end method

.method public abstract reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setAppVersion(Ljava/lang/String;)V
.end method

.method public abstract setCatchMultiSignal(Z)V
.end method

.method public abstract setDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setDeviceModel(Ljava/lang/String;)V
.end method

.method public abstract setGameType(I)V
.end method

.method public abstract setIsAppForeground(Z)V
.end method

.method public abstract setLogPath(Ljava/lang/String;)V
.end method

.method public abstract setScene(I)V
.end method

.method public abstract setUnwindExtraStack(Z)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setUserSceneTag(Ljava/lang/String;)V
.end method

.method public abstract setUserValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startCrashReport()V
.end method

.method public abstract testJavaCrash()V
.end method

.method public abstract testOomCrash()V
.end method
