.class public Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory$Honeycomb;
.super Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Honeycomb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;-><init>(Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;)V

    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 0

    new-instance p1, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Honeycomb;

    invoke-direct {p1}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Honeycomb;-><init>()V

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Honeycomb;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method protected bridge synthetic createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory$Honeycomb;->createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p1

    return-object p1
.end method
