.class public Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;
.super Landroid/os/AsyncTask;
.source "SendMessageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/linecorp/linesdk/LineApiResponse<",
        "Ljava/util/List<",
        "Lcom/linecorp/linesdk/SendMessageResponse;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

.field private lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/api/LineApiClient;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/api/LineApiClient;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;-><init>(Lcom/linecorp/linesdk/api/LineApiClient;Ljava/util/List;Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;)V

    return-void
.end method

.method constructor <init>(Lcom/linecorp/linesdk/api/LineApiClient;Ljava/util/List;Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/api/LineApiClient;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;",
            "Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->messages:Ljava/util/List;

    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->messages:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/linecorp/linesdk/api/LineApiClient;->sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->doInBackground([Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/linecorp/linesdk/LineApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

    invoke-interface {p1}, Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->apiStatusListener:Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;

    invoke-interface {p1}, Lcom/linecorp/linesdk/dialog/internal/ApiStatusListener;->onFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/linecorp/linesdk/LineApiResponse;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/SendMessageTask;->onPostExecute(Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void
.end method
