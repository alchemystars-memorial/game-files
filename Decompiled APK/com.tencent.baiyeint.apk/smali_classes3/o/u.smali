.class public final Lo/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final a:Lo/v$a;


# direct methods
.method public constructor <init>(Lo/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo/u;->a:Lo/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lo/u;->a:Lo/v$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/v$a;->callback()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
