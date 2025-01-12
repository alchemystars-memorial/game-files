.class public final Lk/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/c;->e(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 1

    const-string p1, "APPayManager"

    const-string v0, "reportData() onFailure."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 1

    const-string p1, "APPayManager"

    const-string v0, "reportData() onStop."

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 2

    sget-object p1, Lo/b$a;->a:Lo/b;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget p1, p1, Lo/b;->b:I

    const-string v1, "dataCount"

    invoke-static {v0, v1, p1}, Lo/e;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
