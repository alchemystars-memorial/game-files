.class public final Lq/g;
.super Lg/h;


# instance fields
.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/h;-><init>(Lg/s;)V

    const-string p1, ""

    iput-object p1, p0, Lq/g;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const-string v0, "APIntroPriceAns"

    const-string v1, "handleFailure(..): request failed."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "APIntroPriceAns"

    const-string v1, "handleFailure(..): request stop."

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Li/m;)V
    .locals 2

    const-string v0, "response data: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIntroPriceAns"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Li/m;->b:Ljava/lang/String;

    iput-object p1, p0, Lq/g;->g:Ljava/lang/String;

    return-void
.end method
