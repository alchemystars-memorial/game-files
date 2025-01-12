.class public Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;
.super Ljava/lang/Object;
.source "StyleSheetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavBarEntity"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private transparency:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()D
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;->transparency:D

    return-wide v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;->color:Ljava/lang/String;

    return-void
.end method

.method public setTransparency(D)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$NavBarEntity;->transparency:D

    return-void
.end method
