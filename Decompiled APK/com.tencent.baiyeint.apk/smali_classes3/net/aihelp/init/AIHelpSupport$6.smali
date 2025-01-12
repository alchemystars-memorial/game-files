.class final Lnet/aihelp/init/AIHelpSupport$6;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->showOperation(Lnet/aihelp/config/OperationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$operationConfig:Lnet/aihelp/config/OperationConfig;


# direct methods
.method constructor <init>(Lnet/aihelp/config/OperationConfig;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$6;->val$operationConfig:Lnet/aihelp/config/OperationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$6;->val$operationConfig:Lnet/aihelp/config/OperationConfig;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->showOperation(Lnet/aihelp/config/OperationConfig;)V

    return-void
.end method
