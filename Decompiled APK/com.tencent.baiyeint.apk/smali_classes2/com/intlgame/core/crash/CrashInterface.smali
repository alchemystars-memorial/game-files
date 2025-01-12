.class public interface abstract Lcom/intlgame/core/crash/CrashInterface;
.super Ljava/lang/Object;
.source "CrashInterface.java"


# virtual methods
.method public abstract initCrash()V
.end method

.method public abstract logCrashInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
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

.method public abstract setCrashUserId(Ljava/lang/String;)V
.end method

.method public abstract setCrashUserValue(Ljava/lang/String;Ljava/lang/String;)V
.end method
