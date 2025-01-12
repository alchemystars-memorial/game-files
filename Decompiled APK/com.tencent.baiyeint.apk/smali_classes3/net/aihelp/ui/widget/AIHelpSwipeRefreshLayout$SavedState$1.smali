.class final Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState$1;
.super Ljava/lang/Object;
.source "AIHelpSwipeRefreshLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState$1;->newArray(I)[Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;
    .locals 0

    new-array p1, p1, [Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;

    return-object p1
.end method
