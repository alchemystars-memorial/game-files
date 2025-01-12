.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;
    }
.end annotation


# static fields
.field public static final ARRANGEMENT_GRID:I = 0x2

.field public static final ARRANGEMENT_LIST:I = 0x1


# instance fields
.field private faqList:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

.field private faqSectionList:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

.field private isSearchValid:Z

.field private isTitleIconValid:Z

.field private noticeBar:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaqList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->faqList:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    return-object v0
.end method

.method public getFaqSectionList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->faqSectionList:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    return-object v0
.end method

.method public getIsSearchValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->isSearchValid:Z

    return v0
.end method

.method public getIsTitleIconValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->isTitleIconValid:Z

    return v0
.end method

.method public getNoticeBar()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->noticeBar:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;

    return-object v0
.end method

.method public setFaqList(Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->faqList:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    return-void
.end method

.method public setFaqSectionList(Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->faqSectionList:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    return-void
.end method

.method public setIsSearchValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->isSearchValid:Z

    return-void
.end method

.method public setIsTitleIconValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->isTitleIconValid:Z

    return-void
.end method

.method public setNoticeBar(Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->noticeBar:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;

    return-void
.end method
