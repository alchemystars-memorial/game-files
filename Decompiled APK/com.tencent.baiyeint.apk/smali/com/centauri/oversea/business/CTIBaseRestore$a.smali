.class public final Lcom/centauri/oversea/business/CTIBaseRestore$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseRestore;->restore(Landroid/content/Context;Ljava/lang/String;Lcom/centauri/oversea/newapi/response/ICTICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/centauri/oversea/business/CTIBaseRestore;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/CTIBaseRestore;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->b:Lcom/centauri/oversea/business/CTIBaseRestore;

    iput-object p2, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(I)V
    .locals 2

    const-string v0, "APBaseRestore"

    if-nez p1, :cond_0

    const-string p1, "init success"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->b:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$000(Lcom/centauri/oversea/business/CTIBaseRestore;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->b:Lcom/centauri/oversea/business/CTIBaseRestore;

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/CTIBaseRestore;->access$100(Lcom/centauri/oversea/business/CTIBaseRestore;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "init error"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$a;->b:Lcom/centauri/oversea/business/CTIBaseRestore;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
