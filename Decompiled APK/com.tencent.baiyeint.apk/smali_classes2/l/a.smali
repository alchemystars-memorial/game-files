.class public final Ll/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/h5/webview/MWebView$g;


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/CTIWebActivity;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V
    .locals 0

    iput-object p1, p0, Ll/a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ll/a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ll/a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ll/a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/a;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
