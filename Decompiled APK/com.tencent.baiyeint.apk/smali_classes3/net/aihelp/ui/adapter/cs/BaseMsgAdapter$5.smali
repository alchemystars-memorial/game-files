.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getAction(ILjava/lang/String;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$actionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$actionName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$actionName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$5;->val$actionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onActionClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
