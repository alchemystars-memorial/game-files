.class public interface abstract Lnet/aihelp/core/util/bus/meta/SubscriberInfo;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"


# virtual methods
.method public abstract getSubscriberClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSubscriberMethods()[Lnet/aihelp/core/util/bus/SubscriberMethod;
.end method

.method public abstract getSuperSubscriberInfo()Lnet/aihelp/core/util/bus/meta/SubscriberInfo;
.end method

.method public abstract shouldCheckSuperclass()Z
.end method
