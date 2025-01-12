.class Lnet/aihelp/ui/helper/SendingBillHelper$2;
.super Ljava/lang/Object;
.source "SendingBillHelper.java"

# interfaces
.implements Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;


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

    iput-object p1, p0, Lnet/aihelp/ui/helper/SendingBillHelper$2;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderChecked()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper$2;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {v0}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$000(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lnet/aihelp/ui/helper/SendingBillHelper$2;->this$0:Lnet/aihelp/ui/helper/SendingBillHelper;

    invoke-static {v0}, Lnet/aihelp/ui/helper/SendingBillHelper;->access$000(Lnet/aihelp/ui/helper/SendingBillHelper;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
