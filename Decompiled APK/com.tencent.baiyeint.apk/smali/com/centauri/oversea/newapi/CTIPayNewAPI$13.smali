.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;
.super Ljava/lang/Object;

# interfaces
.implements Lg/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reportData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

.field public final val$method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    iput-object p2, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    const-string v0, "finalDataReport failed"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    const-string v0, "finalDataReport stoped"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lg/h;)V
    .locals 1

    iget-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$13;->val$method:Ljava/lang/String;

    const-string v0, "finalDataReport succ"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
