.class public interface abstract Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$View;
.super Ljava/lang/Object;
.source "SendMessageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/SendMessageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onExceedMaxTargetUserCount(I)V
.end method

.method public abstract onSendMessageFailure()V
.end method

.method public abstract onSendMessageSuccess()V
.end method

.method public abstract onTargetUserAdded(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
.end method

.method public abstract onTargetUserRemoved(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
.end method
