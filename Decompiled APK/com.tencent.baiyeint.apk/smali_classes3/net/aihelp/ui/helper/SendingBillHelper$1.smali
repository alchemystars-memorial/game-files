.class Lnet/aihelp/ui/helper/SendingBillHelper$1;
.super Ljava/lang/Object;
.source "SendingBillHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/SendingBillHelper;->readyToSelectBill(Landroid/content/Context;Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/helper/SendingBillHelper;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/helper/SendingBillHelper;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$1;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper$1;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
