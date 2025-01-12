.class public final Lcom/centauri/oversea/business/CTIBaseRestore$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/ICTICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/CTIBaseRestore;->postProvide(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/CTIBaseRestore;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/CTIBaseRestore;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/CTIBaseRestore$d;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reprovide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&receiptList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.oversea.gw.result"

    invoke-virtual {v0, v2, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lp/n$a;->a:Lp/n;

    new-instance v1, Lcom/centauri/oversea/business/CTIBaseRestore$d$a;

    invoke-direct {v1}, Lcom/centauri/oversea/business/CTIBaseRestore$d$a;-><init>()V

    invoke-virtual {v0, v1}, Lp/n;->b(Lg/s;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/CTIBaseRestore$d;->a:Lcom/centauri/oversea/business/CTIBaseRestore;

    invoke-virtual {v0, p1, p2}, Lcom/centauri/oversea/business/CTIBaseRestore;->callbackOut(ILjava/lang/String;)V

    return-void
.end method
