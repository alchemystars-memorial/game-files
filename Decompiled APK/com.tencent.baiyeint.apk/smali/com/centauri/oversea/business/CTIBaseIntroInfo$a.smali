.class public final Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseIntroInfo;->queryServerInfo(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/newapi/response/ICTICallback;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/response/ICTICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;->a:Lcom/centauri/oversea/newapi/response/ICTICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lg/h;)V
    .locals 2

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;->a:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStop(Lg/h;)V
    .locals 2

    iget-object p1, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;->a:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lg/h;)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseIntroInfo$a;->a:Lcom/centauri/oversea/newapi/response/ICTICallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    check-cast p1, Lq/g;

    iget-object p1, p1, Lq/g;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/centauri/oversea/newapi/response/ICTICallback;->callback(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
