.class public final Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wait time"

    invoke-static {v3, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Lp/n$a;->a:Lp/n;

    new-instance v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a$a;-><init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$a;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lq/d;

    invoke-direct {v2}, Lq/d;-><init>()V

    invoke-virtual {v2}, Lq/d;->z()V

    new-instance v3, Lq/c;

    invoke-direct {v3, v1}, Lq/c;-><init>(Lg/s;)V

    iget-object v0, v0, Lp/n;->a:Lg/o;

    invoke-virtual {v0, v2, v3}, Lg/o;->a(Lg/i;Lg/h;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
