.class public Lnet/aihelp/core/ui/dialog/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    }
.end annotation


# static fields
.field private static sLastObjectCreatedTime:J


# instance fields
.field public mAlert:Lnet/aihelp/core/ui/dialog/AlertController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lnet/aihelp/core/ui/dialog/AlertController;

    invoke-virtual {p0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/aihelp/core/ui/dialog/AlertController;-><init>(Lnet/aihelp/core/ui/dialog/AlertDialog;Landroid/view/Window;)V

    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog;->mAlert:Lnet/aihelp/core/ui/dialog/AlertController;

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lnet/aihelp/core/ui/dialog/AlertDialog;->sLastObjectCreatedTime:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0

    sput-wide p0, Lnet/aihelp/core/ui/dialog/AlertDialog;->sLastObjectCreatedTime:J

    return-wide p0
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog;->mAlert:Lnet/aihelp/core/ui/dialog/AlertController;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertController;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog;->mAlert:Lnet/aihelp/core/ui/dialog/AlertController;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/dialog/AlertController;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog;->mAlert:Lnet/aihelp/core/ui/dialog/AlertController;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/dialog/AlertController;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method
