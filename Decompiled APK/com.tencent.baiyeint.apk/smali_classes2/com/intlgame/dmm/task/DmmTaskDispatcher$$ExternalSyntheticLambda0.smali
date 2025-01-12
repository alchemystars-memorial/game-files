.class public final synthetic Lcom/intlgame/dmm/task/DmmTaskDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    invoke-virtual {v0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->dispatchNext()V

    return-void
.end method
