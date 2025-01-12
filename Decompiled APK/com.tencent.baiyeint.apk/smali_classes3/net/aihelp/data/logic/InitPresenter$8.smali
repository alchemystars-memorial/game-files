.class Lnet/aihelp/data/logic/InitPresenter$8;
.super Ljava/lang/Object;
.source "InitPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/InitPresenter;->startUnreadMessagePolling(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/InitPresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/InitPresenter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter$8;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter$8;->this$0:Lnet/aihelp/data/logic/InitPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/InitPresenter;->access$900(Lnet/aihelp/data/logic/InitPresenter;)V

    return-void
.end method
