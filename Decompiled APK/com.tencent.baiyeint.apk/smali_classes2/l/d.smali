.class public final Ll/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/CTIWebActivity;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V
    .locals 0

    iput-object p1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->e:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a(Lcom/centauri/oversea/business/h5/CTIWebActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "CTIWebActivity"

    const-string v1, "loadUrl url: "

    if-nez p1, :cond_0

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v1, v1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v2, v1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v2}, Lm/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ll/d;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v0, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->h:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v1, p1, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v1}, Lm/c;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
