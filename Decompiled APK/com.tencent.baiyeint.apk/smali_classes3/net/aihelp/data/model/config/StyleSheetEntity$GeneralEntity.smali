.class public Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;
.super Ljava/lang/Object;
.source "StyleSheetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/StyleSheetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;,
        Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;
    }
.end annotation


# instance fields
.field private backButton:Ljava/lang/String;

.field private buttonColor:Ljava/lang/String;

.field private frontColor:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;

.field private highlightColor:Ljava/lang/String;

.field private horizontal:Ljava/lang/String;

.field private horizontalImgUrl:Ljava/lang/String;

.field private navBar:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;

.field private textColor:Ljava/lang/String;

.field private vertical:Ljava/lang/String;

.field private verticalImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackButton()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->backButton:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->buttonColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontColor()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->frontColor:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;

    return-object v0
.end method

.method public getHighlightColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->highlightColor:Ljava/lang/String;

    return-object v0
.end method

.method public getHorizontal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->horizontal:Ljava/lang/String;

    return-object v0
.end method

.method public getHorizontalImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->horizontalImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNavBar()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->navBar:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public getVertical()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->vertical:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->verticalImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBackButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->backButton:Ljava/lang/String;

    return-void
.end method

.method public setButtonColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->buttonColor:Ljava/lang/String;

    return-void
.end method

.method public setFrontColor(Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->frontColor:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;

    return-void
.end method

.method public setHighlightColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->highlightColor:Ljava/lang/String;

    return-void
.end method

.method public setHorizontal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->horizontal:Ljava/lang/String;

    return-void
.end method

.method public setHorizontalImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->horizontalImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setNavBar(Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->navBar:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->textColor:Ljava/lang/String;

    return-void
.end method

.method public setVertical(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->vertical:Ljava/lang/String;

    return-void
.end method

.method public setVerticalImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;->verticalImgUrl:Ljava/lang/String;

    return-void
.end method
