.class final Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;
.super Ljava/lang/Object;
.source "ViewIndexer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewIndexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewIndexer.kt\ncom/facebook/appevents/codeless/ViewIndexer$schedule$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n1#2:269\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $indexingTask:Ljava/util/TimerTask;

.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;->$indexingTask:Ljava/util/TimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$getIndexingTimer$p(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$setPreviousDigest$p(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v4, p0, Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;->$indexingTask:Ljava/util/TimerTask;

    const-wide/16 v5, 0x0

    const/16 v1, 0x3e8

    int-to-long v7, v1

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iget-object v1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$schedule$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v1, v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$setIndexingTimer$p(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/Timer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error scheduling indexing job"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :goto_1
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
