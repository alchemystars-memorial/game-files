.class public final Lo/m;
.super Ljava/util/TimerTask;


# instance fields
.field public final a:Lo/n;


# direct methods
.method public constructor <init>(Lo/n;)V
    .locals 0

    iput-object p1, p0, Lo/m;->a:Lo/n;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/m;->a:Lo/n;

    iget v1, v0, Lo/n;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lo/n;->a:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lo/n;->d:Lo/n$b;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lo/n;->c:Ljava/util/Timer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-boolean v3, Lo/n;->e:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    sput-boolean v3, Lo/n;->e:Z

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iput-object v2, v0, Lo/n;->c:Ljava/util/Timer;

    :cond_1
    iput-object v2, v0, Lo/n;->d:Lo/n$b;

    :cond_2
    :goto_0
    return-void
.end method
