.class final Lnet/aihelp/init/AIHelpSupport$15;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$15;->val$callback:Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$15;->val$callback:Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V

    return-void
.end method
