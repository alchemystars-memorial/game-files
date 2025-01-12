.class Lnet/aihelp/data/logic/ElvaBotPresenter$1;
.super Ljava/lang/Object;
.source "ElvaBotPresenter.java"

# interfaces
.implements Lnet/aihelp/core/net/check/Ping$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/ElvaBotPresenter;->prepareNetworkCheck(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/ElvaBotPresenter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$1;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lnet/aihelp/core/net/check/Ping$Result;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter$1;->this$0:Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-static {v0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->access$000(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/Object;)V

    return-void
.end method
