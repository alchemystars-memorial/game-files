.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoticeBarEntity"
.end annotation


# instance fields
.field private intervals:I

.field private isNoticeIconValid:Z

.field private isNoticeValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntervals()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->intervals:I

    return v0
.end method

.method public getIsNoticeIconValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->isNoticeIconValid:Z

    return v0
.end method

.method public getIsNoticeValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->isNoticeValid:Z

    return v0
.end method

.method public setIntervals(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->intervals:I

    return-void
.end method

.method public setIsNoticeIconValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->isNoticeIconValid:Z

    return-void
.end method

.method public setIsNoticeValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->isNoticeValid:Z

    return-void
.end method
