.class final Lnet/aihelp/init/AIHelpSupport$16;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$16;->val$callback:Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$16;->val$callback:Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V

    return-void
.end method
