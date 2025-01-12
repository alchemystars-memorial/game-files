.class public final Lo/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lo/t;->a:Lo/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lo/t;->a:Lo/v$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/v$a;->callback()V

    :cond_0
    return-void
.end method
