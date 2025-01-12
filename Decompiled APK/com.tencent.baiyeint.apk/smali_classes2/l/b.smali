.class public final Ll/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/h5/webview/MWebView$f;


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/CTIWebActivity;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V
    .locals 0

    iput-object p1, p0, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTIWebActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ll/b;->a:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    iget-object v1, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iget v3, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->b:Lm/c;

    invoke-virtual {v4}, Lm/c;->b()V

    invoke-virtual {v1, v3, p1, v2}, Lcom/centauri/oversea/business/h5/a;->b(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->c:Lcom/centauri/oversea/business/h5/a;

    iget v1, v0, Lcom/centauri/oversea/business/h5/CTIWebActivity;->a:I

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3, v2}, Lcom/centauri/oversea/business/h5/a;->b(IILjava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
