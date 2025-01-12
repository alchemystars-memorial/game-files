.class public final Lo/o;
.super Ljava/lang/Object;

# interfaces
.implements Lo/p$a;


# instance fields
.field public final a:Lo/p$a;

.field public final b:Lo/p;


# direct methods
.method public constructor <init>(Lo/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo/o;->b:Lo/p;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/o;->a:Lo/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZF)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";isUsable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIPMeasure"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lo/o;->b:Lo/p;

    iget-object v0, v0, Lo/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/o;->b:Lo/p;

    iget v2, v0, Lo/p;->e:F

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iput p3, v0, Lo/p;->e:F

    iput-object p1, v0, Lo/p;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lo/o;->a:Lo/p$a;

    if-eqz v0, :cond_1

    check-cast v0, Lo/o;

    invoke-virtual {v0, p1, p2, p3}, Lo/o;->a(Ljava/lang/String;ZF)V

    :cond_1
    iget-object p1, p0, Lo/o;->b:Lo/p;

    iget p2, p1, Lo/p;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lo/p;->f:I

    iget-object p1, p1, Lo/p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lo/o;->b:Lo/p;

    iget-object p1, p1, Lo/p;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p1, p0, Lo/o;->b:Lo/p;

    const/4 p2, 0x0

    iput-object p2, p1, Lo/p;->a:Ljava/util/concurrent/ExecutorService;

    const-string p1, "Shutdown and destroy executorService"

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
