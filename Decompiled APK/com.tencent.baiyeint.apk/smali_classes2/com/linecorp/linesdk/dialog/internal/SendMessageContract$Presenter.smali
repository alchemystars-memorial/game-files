.class public interface abstract Lcom/linecorp/linesdk/dialog/internal/SendMessageContract$Presenter;
.super Ljava/lang/Object;
.source "SendMessageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/SendMessageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract addTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
.end method

.method public abstract getFriends(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V
.end method

.method public abstract getGroups(Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V
.end method

.method public abstract getTargetUserListSize()I
.end method

.method public abstract release()V
.end method

.method public abstract removeTargetUser(Lcom/linecorp/linesdk/dialog/internal/TargetUser;)V
.end method

.method public abstract sendMessage(Lcom/linecorp/linesdk/message/MessageData;)V
.end method
