.class public Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;
.super Landroid/app/DialogFragment;
.source "NativeGalleryMediaPickerResultFragment.java"


# static fields
.field public static progressBarLabel:Ljava/lang/String; = "Please wait..."

.field public static uiUpdateInterval:I = 0x64


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private final progressBarUpdateTask:Ljava/lang/Runnable;

.field private final resultOperation:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

.field private final uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$1;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$1;-><init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultOperation"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$1;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$1;-><init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)V

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    return-void
.end method

.method static synthetic access$000(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;
    .locals 0

    iget-object p0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->setRetainInstance(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$2;

    invoke-direct {v0, p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$2;-><init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x1e

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x432f0000    # 175.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    new-instance v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010078

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarLabel:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;

    invoke-direct {v1, p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment$3;-><init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    invoke-virtual {v0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sendResultToUnity()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->uiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->progressBarUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;->resultOperation:Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    invoke-virtual {p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sendResultToUnity()V

    return-void
.end method
