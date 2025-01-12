.class public final Lo/n$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lo/n$a;


# direct methods
.method public constructor <init>(Lo/n$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/n$b;->a:Lo/n$a;

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lo/n$b;->a:Lo/n$a;

    if-eqz p1, :cond_0

    const-string p1, "MCycleTimer"

    const-string v0, "timer update."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/n$b;->a:Lo/n$a;

    invoke-interface {p1}, Lo/n$a;->onUpdate()V

    :cond_0
    return-void
.end method
