.class public Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/dialog/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;,
        Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;
    }
.end annotation


# instance fields
.field public final P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

.field private mContext:Landroid/content/Context;

.field private mDoubleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;

.field private mSingleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "aihelp_dialog"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getStyleId(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    invoke-direct {v0, p1, p2}, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mSingleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mDoubleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;

    return-object p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private setClickListeners(Lnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelViewId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelViewId:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$1;-><init>(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mSingleConfirmViewId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mSingleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mSingleConfirmViewId:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$2;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$2;-><init>(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mLeftConfirmViewId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mDoubleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mLeftConfirmViewId:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;-><init>(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mRightConfirmViewId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mDoubleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mRightConfirmViewId:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$4;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$4;-><init>(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public create()Lnet/aihelp/core/ui/dialog/AlertDialog;
    .locals 3

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog;

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v2, v2, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mThemeResId:I

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v2, v0, Lnet/aihelp/core/ui/dialog/AlertDialog;->mAlert:Lnet/aihelp/core/ui/dialog/AlertController;

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->apply(Lnet/aihelp/core/ui/dialog/AlertController;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-boolean v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-boolean v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setClickListeners(Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    return-object v0
.end method

.method public dip2px(Landroid/content/Context;D)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p1

    mul-double/2addr p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    double-to-int p1, p2

    return p1
.end method

.method public fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const-string v0, "aihelp_dialog_from_bottom_anim"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getStyleId(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mAnimation:I

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const/16 v0, 0x50

    iput v0, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mGravity:I

    return-object p0
.end method

.method public fromRight(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const-string v0, "aihelp_dialog_from_right_anim"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getStyleId(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mAnimation:I

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const v0, 0x800005

    iput v0, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mGravity:I

    return-object p0
.end method

.method public fullWidth()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const/4 v1, -0x1

    iput v1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mWidth:I

    return-object p0
.end method

.method public getAlertParams()Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    return-object v0
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mTextArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget v1, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBottomTextViewId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setBottomTextViewId(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBottomTextViewId:I

    return-object p0
.end method

.method public setCancelViewId(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelViewId:I

    return-object p0
.end method

.method public setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput-boolean p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setConfirmViewId(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mSingleConfirmViewId:I

    return-object p0
.end method

.method public setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    const/4 v0, 0x0

    iput v0, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setDoubleConfirmViewId(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mLeftConfirmViewId:I

    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p2, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mRightConfirmViewId:I

    return-object p0
.end method

.method public setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mGravity:I

    return-object p0
.end method

.method public setHeightByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    int-to-double v2, v0

    const-wide v4, 0x3fe7333333333333L    # 0.725

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mHeight:I

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mClickArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnDoubleChoiceListener(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mDoubleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOnSingleConfirmListener(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mSingleConfirmListener:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnSingleConfirmListener;

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mTextArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setTextBackground(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v0, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mBackgroundResArray:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mContext:Landroid/content/Context;

    int-to-double v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mWidth:I

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mContext:Landroid/content/Context;

    int-to-double v2, p2

    invoke-virtual {p0, v1, v2, v3}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mHeight:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v2, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p1, v2, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mWidth:I

    :cond_1
    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    iput p2, p1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mHeight:I

    :cond_3
    return-object p0
.end method

.method public setWidthByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->P:Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;

    int-to-double v2, v0

    const-wide v4, 0x3fe7333333333333L    # 0.725

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;->mWidth:I

    return-object p0
.end method

.method public show()Lnet/aihelp/core/ui/dialog/AlertDialog;
    .locals 5

    invoke-virtual {p0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lnet/aihelp/core/ui/dialog/AlertDialog;->access$200()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->access$202(J)J

    :cond_0
    return-object v0
.end method
