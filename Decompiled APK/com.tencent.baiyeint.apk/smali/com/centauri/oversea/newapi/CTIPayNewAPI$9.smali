.class Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;
.super Ljava/lang/Object;

# interfaces
.implements Lo/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newapi/CTIPayNewAPI;->startTimerReProvide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;->this$0:Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    new-instance v1, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9$1;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI$9$1;-><init>(Lcom/centauri/oversea/newapi/CTIPayNewAPI$9;)V

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->reProvide(Lcom/centauri/oversea/newapi/response/ICTICallback;)V

    return-void
.end method
