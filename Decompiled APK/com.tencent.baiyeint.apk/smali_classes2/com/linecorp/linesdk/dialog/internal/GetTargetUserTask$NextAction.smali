.class public interface abstract Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;
.super Ljava/lang/Object;
.source "GetTargetUserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NextAction"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract run(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;)V"
        }
    .end annotation
.end method
