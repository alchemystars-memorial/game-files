.class public final Lo/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lo/l;

.field public final b:Lo/l$a;


# direct methods
.method public constructor <init>(Lo/l$a;Lo/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo/j;->b:Lo/l$a;

    iput-object p2, p0, Lo/j;->a:Lo/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lo/j;->b:Lo/l$a;

    iget-object p1, p1, Lo/l$a;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lo/j;->a:Lo/l;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
