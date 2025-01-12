.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnLineEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;
    }
.end annotation


# instance fields
.field private historyTicket:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;

.field private isExternalName:Z

.field private isHeadValid:Z

.field private isNavBarTitleIconValid:Z

.field private isSendTime:Z

.field private operateModule:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;

.field private satisfied:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHistoryTicket()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->historyTicket:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;

    return-object v0
.end method

.method public getIsExternalName()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isExternalName:Z

    return v0
.end method

.method public getIsHeadValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isHeadValid:Z

    return v0
.end method

.method public getIsNavBarTitleIconValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isNavBarTitleIconValid:Z

    return v0
.end method

.method public getIsSendTime()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isSendTime:Z

    return v0
.end method

.method public getOperateModule()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->operateModule:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;

    return-object v0
.end method

.method public getSatisfied()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->satisfied:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;

    return-object v0
.end method

.method public setHistoryTicket(Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->historyTicket:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;

    return-void
.end method

.method public setIsExternalName(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isExternalName:Z

    return-void
.end method

.method public setIsHeadValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isHeadValid:Z

    return-void
.end method

.method public setIsNavBarTitleIconValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isNavBarTitleIconValid:Z

    return-void
.end method

.method public setIsSendTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->isSendTime:Z

    return-void
.end method

.method public setOperateModule(Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->operateModule:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$OperateModuleEntity;

    return-void
.end method

.method public setSatisfied(Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->satisfied:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;

    return-void
.end method
