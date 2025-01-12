.class public interface abstract Lnet/aihelp/core/util/bus/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/bus/Logger$Default;,
        Lnet/aihelp/core/util/bus/Logger$SystemOutLogger;,
        Lnet/aihelp/core/util/bus/Logger$JavaLogger;
    }
.end annotation


# virtual methods
.method public abstract log(Ljava/util/logging/Level;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
