.class public Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# instance fields
.field public mAnimation:I

.field public mBackgroundResArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBottomTextViewId:I

.field public mCancelViewId:I

.field public mCancelable:Z

.field public mClickArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mGravity:I

.field public mHeight:I

.field public mLeftConfirmViewId:I

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mRightConfirmViewId:I

.field public mSingleConfirmViewId:I

.field public mTextArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mThemeResId:I

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelable:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mTextArray:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mClickArray:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBackgroundResArray:Landroid/util/SparseArray;

    const/4 v1, -0x2

    iput v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mWidth:I

    iput v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mHeight:I

    const/16 v1, 0x11

    iput v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mGravity:I

    iput v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mAnimation:I

    iput v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBottomTextViewId:I

    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iput p2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mThemeResId:I

    return-void
.end method


# virtual methods
.method apply(Lnet/aihelp/core/ui/dialog/AlertController;)V
    .locals 4

    iget v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_0

    new-instance v1, Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    invoke-direct {v1}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;-><init>()V

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;->setContentView(Landroid/view/View;)V

    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertController;->getDialog()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    invoke-virtual {v1}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setContentView(Landroid/view/View;)V

    invoke-static {p1, v1}, Lnet/aihelp/core/ui/dialog/AlertController;->access$000(Lnet/aihelp/core/ui/dialog/AlertController;Lnet/aihelp/core/ui/dialog/DialogViewHelper;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mTextArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mTextArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mTextArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v3}, Lnet/aihelp/core/ui/dialog/AlertController;->setText(ILjava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mClickArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mClickArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mClickArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2, v3}, Lnet/aihelp/core/ui/dialog/AlertController;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBackgroundResArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBackgroundResArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBackgroundResArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertController;->setBackground(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertController;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget v0, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mAnimation:I

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method setContentView() must be called! "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
