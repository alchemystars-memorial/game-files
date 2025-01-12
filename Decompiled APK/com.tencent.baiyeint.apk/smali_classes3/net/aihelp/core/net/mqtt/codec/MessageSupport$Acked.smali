.class public interface abstract Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
.super Ljava/lang/Object;
.source "MessageSupport.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/codec/MessageSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Acked"
.end annotation


# virtual methods
.method public abstract dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
.end method

.method public abstract dup()Z
.end method

.method public abstract messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
.end method

.method public abstract messageId()S
.end method

.method public abstract qos()Lnet/aihelp/core/net/mqtt/client/QoS;
.end method
