.class public Lnet/aihelp/ui/widget/snackbar/Snackbar$Callback;
.super Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lnet/aihelp/ui/widget/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar$Callback;->onDismissed(Lnet/aihelp/ui/widget/snackbar/Snackbar;I)V

    return-void
.end method

.method public onDismissed(Lnet/aihelp/ui/widget/snackbar/Snackbar;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar$Callback;->onShown(Lnet/aihelp/ui/widget/snackbar/Snackbar;)V

    return-void
.end method

.method public onShown(Lnet/aihelp/ui/widget/snackbar/Snackbar;)V
    .locals 0

    return-void
.end method
