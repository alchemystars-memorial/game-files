.class public final Lo/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/v$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lo/l;

.field public c:Lo/l;

.field public d:Lo/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/v;->b:Lo/l;

    iput-object v0, p0, Lo/v;->c:Lo/l;

    iput-object v0, p0, Lo/v;->d:Lo/c;

    iput-object p1, p0, Lo/v;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lo/v;->d:Lo/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/v;->d:Lo/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/v;->d:Lo/c;

    const-string v0, "MUIManager"

    const-string v1, "dismissWaitDialog()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
