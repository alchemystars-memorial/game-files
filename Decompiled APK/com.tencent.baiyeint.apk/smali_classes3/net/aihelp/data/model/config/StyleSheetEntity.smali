.class public Lnet/aihelp/data/model/config/StyleSheetEntity;
.super Ljava/lang/Object;
.source "StyleSheetEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;,
        Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;,
        Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;
    }
.end annotation


# instance fields
.field private general:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;

.field private help:Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;

.field private onLine:Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneral()Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity;->general:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;

    return-object v0
.end method

.method public getHelp()Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity;->help:Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;

    return-object v0
.end method

.method public getOnLine()Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity;->onLine:Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;

    return-object v0
.end method

.method public setGeneral(Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity;->general:Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;

    return-void
.end method

.method public setHelp(Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity;->help:Lnet/aihelp/data/model/config/StyleSheetEntity$HelpEntity;

    return-void
.end method

.method public setOnLine(Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity;->onLine:Lnet/aihelp/data/model/config/StyleSheetEntity$OnLineEntity;

    return-void
.end method
