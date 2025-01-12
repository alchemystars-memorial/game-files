.class Lnet/aihelp/ui/cs/ElvaBotFragment$7;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->handleMsg(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

.field final synthetic val$botReply:Lnet/aihelp/data/model/cs/ElvaBotMsg;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$7;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$7;->val$botReply:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$7;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$7;->val$botReply:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->updateChatList(Lnet/aihelp/data/model/cs/ConversationMsg;)V

    return-void
.end method
