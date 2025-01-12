.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperateModuleEntity"
.end annotation


# instance fields
.field private isEvaluation:Z

.field private isOperateModule:Z

.field private showOperateModule:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsEvaluation()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;->isEvaluation:Z

    return v0
.end method

.method public getIsOperateModule()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;->isOperateModule:Z

    return v0
.end method

.method public getShowOperateModule()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;->showOperateModule:I

    return v0
.end method

.method public setIsEvaluation(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;->isEvaluation:Z

    return-void
.end method

.method public setIsOperateModule(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;->isOperateModule:Z

    return-void
.end method

.method public setShowOperateModule(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;->showOperateModule:I

    return-void
.end method
