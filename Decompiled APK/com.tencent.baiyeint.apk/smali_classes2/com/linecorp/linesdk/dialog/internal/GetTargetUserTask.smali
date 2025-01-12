.class public Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;
.super Landroid/os/AsyncTask;
.source "GetTargetUserTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

.field private nextAction:Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;

.field private type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;Lcom/linecorp/linesdk/api/LineApiClient;Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->nextAction:Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;

    return-void
.end method

.method private convertFriendsToTargetUsers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/LineFriendProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/LineFriendProfile;

    invoke-static {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->createInstance(Lcom/linecorp/linesdk/LineFriendProfile;)Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertGroupsToTargetUsers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/LineGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/LineGroup;

    invoke-static {v1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->createInstance(Lcom/linecorp/linesdk/LineGroup;)Lcom/linecorp/linesdk/dialog/internal/TargetUser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getAllFriends()V
    .locals 4

    const-string v0, ""

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    sget-object v2, Lcom/linecorp/linesdk/FriendSortField;->RELATION:Lcom/linecorp/linesdk/FriendSortField;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/linecorp/linesdk/api/LineApiClient;->getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->publishProgress([Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/GetFriendsResponse;

    new-array v1, v3, [Ljava/util/List;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/GetFriendsResponse;->getFriends()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->convertFriendsToTargetUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/GetFriendsResponse;->getNextPageRequestToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAllGroups()V
    .locals 4

    const-string v0, ""

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/linecorp/linesdk/api/LineApiClient;->getGroups(Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->publishProgress([Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/GetGroupsResponse;

    new-array v1, v2, [Ljava/util/List;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/GetGroupsResponse;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->convertGroupsToTargetUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/GetGroupsResponse;->getNextPageRequestToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->getAllFriends()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->type:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->GROUP:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->getAllGroups()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->onProgressUpdate([Ljava/util/List;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/dialog/internal/TargetUser;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask;->nextAction:Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;

    invoke-interface {v0, p1}, Lcom/linecorp/linesdk/dialog/internal/GetTargetUserTask$NextAction;->run(Ljava/util/List;)V

    return-void
.end method
