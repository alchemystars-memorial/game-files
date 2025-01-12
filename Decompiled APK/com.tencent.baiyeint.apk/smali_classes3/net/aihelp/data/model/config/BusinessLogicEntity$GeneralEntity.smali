.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$InformationEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;
    }
.end annotation


# static fields
.field public static final BG_OPTION_COLOR:I = 0x1

.field public static final BG_OPTION_IMAGE:I = 0x2


# instance fields
.field private bgOptions:I

.field private direction:I

.field private faqEvaluation:Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

.field private information:Lnet/aihelp/data/model/init/PrivacyControlEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgOptions()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->bgOptions:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->direction:I

    return v0
.end method

.method public getFaqEvaluation()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->faqEvaluation:Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    return-object v0
.end method

.method public getInformation()Lnet/aihelp/data/model/init/PrivacyControlEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->information:Lnet/aihelp/data/model/init/PrivacyControlEntity;

    return-object v0
.end method

.method public setBgOptions(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->bgOptions:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->direction:I

    return-void
.end method

.method public setFaqEvaluation(Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->faqEvaluation:Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    return-void
.end method

.method public setInformation(Lnet/aihelp/data/model/init/PrivacyControlEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->information:Lnet/aihelp/data/model/init/PrivacyControlEntity;

    return-void
.end method
