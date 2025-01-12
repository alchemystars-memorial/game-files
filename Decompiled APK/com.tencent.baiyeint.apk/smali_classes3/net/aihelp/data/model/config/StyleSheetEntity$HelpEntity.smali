.class public Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;
.super Ljava/lang/Object;
.source "StyleSheetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/StyleSheetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpEntity"
.end annotation


# instance fields
.field private faqList:Ljava/lang/String;

.field private faqSectionList:Ljava/lang/String;

.field private navBar:Ljava/lang/String;

.field private noticeBar:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaqList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->faqList:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqSectionList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->faqSectionList:Ljava/lang/String;

    return-object v0
.end method

.method public getNavBar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->navBar:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeBar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->noticeBar:Ljava/lang/String;

    return-object v0
.end method

.method public setFaqList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->faqList:Ljava/lang/String;

    return-void
.end method

.method public setFaqSectionList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->faqSectionList:Ljava/lang/String;

    return-void
.end method

.method public setNavBar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->navBar:Ljava/lang/String;

    return-void
.end method

.method public setNoticeBar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;->noticeBar:Ljava/lang/String;

    return-void
.end method
