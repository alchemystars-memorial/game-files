.class Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$1;
.super Ljava/lang/Object;
.source "INTLDmmAuthFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->getCancelClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$1;->this$0:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$1;->this$0:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->setResult(I)V

    iget-object p1, p0, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity$1;->this$0:Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;

    invoke-virtual {p1}, Lcom/intlgame/auth/dmm/activity/INTLDmmAuthFragmentActivity;->finish()V

    return-void
.end method
