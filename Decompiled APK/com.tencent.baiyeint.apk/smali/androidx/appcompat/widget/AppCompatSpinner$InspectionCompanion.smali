.class public final Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;
.super Ljava/lang/Object;
.source "AppCompatSpinner$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroidx/appcompat/widget/AppCompatSpinner;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyMapper"
        }
    .end annotation

    sget v0, Landroidx/appcompat/R$attr;->backgroundTint:I

    const-string v1, "backgroundTint"

    invoke-interface {p1, v1, v0}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mBackgroundTintId:I

    sget v0, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    const-string v1, "backgroundTintMode"

    invoke-interface {p1, v1, v0}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mBackgroundTintModeId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/inspector/PropertyReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appCompatSpinner",
            "propertyReader"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p1}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p1
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "appCompatSpinner",
            "propertyReader"
        }
    .end annotation

    check-cast p1, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
