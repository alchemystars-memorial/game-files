.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatisfiedEntity"
.end annotation


# instance fields
.field private feedbackMax:I

.field private isFeedback:Z

.field private isValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeedbackMax()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->feedbackMax:I

    return v0
.end method

.method public isFeedback()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isFeedback:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isValid:Z

    return v0
.end method

.method public setFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isFeedback:Z

    return-void
.end method

.method public setFeedbackMax(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->feedbackMax:I

    return-void
.end method

.method public setIsFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isFeedback:Z

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isValid:Z

    return-void
.end method
