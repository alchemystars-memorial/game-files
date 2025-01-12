.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaqSectionListEntity"
.end annotation


# instance fields
.field private arrangement:I

.field private isFaqIconValid:Z

.field private isTitleIconValid:Z

.field private isTitleValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrangement()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->arrangement:I

    return v0
.end method

.method public getIsFaqIconValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->isFaqIconValid:Z

    return v0
.end method

.method public getIsTitleIconValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->isTitleIconValid:Z

    return v0
.end method

.method public getIsTitleValid()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->isTitleValid:Z

    return v0
.end method

.method public setArrangement(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->arrangement:I

    return-void
.end method

.method public setIsFaqIconValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->isFaqIconValid:Z

    return-void
.end method

.method public setIsTitleIconValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->isTitleIconValid:Z

    return-void
.end method

.method public setIsTitleValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->isTitleValid:Z

    return-void
.end method
