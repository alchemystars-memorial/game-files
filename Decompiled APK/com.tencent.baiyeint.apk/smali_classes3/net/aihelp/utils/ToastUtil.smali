.class public Lnet/aihelp/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

.field private static toast:Landroid/widget/Toast;

.field private static viewToSnackBarMapping:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lnet/aihelp/ui/widget/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSnackBar(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->dismiss()V

    :cond_0
    sget-object v0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static makeRawToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    :goto_0
    sget-object p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "aihelp_toast_center_view"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "aihelp_toast_txt"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    :goto_1
    sget-object p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    const/16 p1, 0x11

    invoke-virtual {p0, p1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    sget-object p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    const-string v0, "snackbar_action"

    const-string v1, "snackbar_text"

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v2, 0x1020002

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "#5C7EFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static showSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "#5C7EFF"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    sput-object p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p0

    const-string p1, "#EFF1F6"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p1, "snackbar_text"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setActionTextColor(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    sget-object p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static showSnackBar(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "#5C7EFF"

    :try_start_0
    sget-object v1, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-static {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "snackbar_text"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setActionTextColor(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static showSnackBar(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    sput-object p1, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V

    sget-object p1, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    sget-object p2, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p1, p0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
