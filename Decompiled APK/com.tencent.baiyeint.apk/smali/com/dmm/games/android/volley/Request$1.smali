.class Lcom/dmm/games/android/volley/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/games/android/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/games/android/volley/Request;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/dmm/games/android/volley/Request;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/android/volley/Request$1;->this$0:Lcom/dmm/games/android/volley/Request;

    iput-object p2, p0, Lcom/dmm/games/android/volley/Request$1;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/dmm/games/android/volley/Request$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/dmm/games/android/volley/Request$1;->this$0:Lcom/dmm/games/android/volley/Request;

    invoke-static {v0}, Lcom/dmm/games/android/volley/Request;->access$000(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/games/android/volley/Request$1;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dmm/games/android/volley/Request$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/dmm/games/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/dmm/games/android/volley/Request$1;->this$0:Lcom/dmm/games/android/volley/Request;

    invoke-static {v0}, Lcom/dmm/games/android/volley/Request;->access$000(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/VolleyLog$MarkerLog;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/games/android/volley/Request$1;->this$0:Lcom/dmm/games/android/volley/Request;

    invoke-virtual {v1}, Lcom/dmm/games/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    return-void
.end method
