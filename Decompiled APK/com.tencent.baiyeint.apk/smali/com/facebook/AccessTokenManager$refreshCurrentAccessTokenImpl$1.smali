.class final Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/facebook/GraphRequestBatch;",
        "onBatchCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $accessToken:Lcom/facebook/AccessToken;

.field final synthetic $callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field final synthetic $declinedPermissions:Ljava/util/Set;

.field final synthetic $expiredPermissions:Ljava/util/Set;

.field final synthetic $permissions:Ljava/util/Set;

.field final synthetic $permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

.field final synthetic this$0:Lcom/facebook/AccessTokenManager;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p5, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissions:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$declinedPermissions:Ljava/util/Set;

    iput-object p8, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$expiredPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "it"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Lcom/facebook/AccessToken;

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$RefreshResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v3}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresAt()I

    move-result v3

    iget-object v4, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v4}, Lcom/facebook/AccessTokenManager$RefreshResult;->getDataAccessExpirationTime()Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v5}, Lcom/facebook/AccessTokenManager$RefreshResult;->getGraphDomain()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-eq v7, v8, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v7, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Failed to refresh access token"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    :try_start_1
    iget-object v3, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v3

    iget-object v7, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresAt()I

    move-result v7

    const-wide/16 v8, 0x3e8

    if-eqz v7, :cond_4

    new-instance v3, Ljava/util/Date;

    iget-object v7, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresAt()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v10, v8

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_4
    iget-object v7, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresIn()I

    move-result v7

    if-eqz v7, :cond_5

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    new-instance v3, Ljava/util/Date;

    iget-object v7, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresIn()I

    move-result v7

    int-to-long v12, v7

    mul-long/2addr v12, v8

    add-long/2addr v12, v10

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    :cond_5
    :goto_1
    move-object/from16 v22, v3

    new-instance v3, Lcom/facebook/AccessToken;

    if-eqz v0, :cond_6

    :goto_2
    move-object v15, v0

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissions:Ljava/util/Set;

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    :goto_4
    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Collection;

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$declinedPermissions:Ljava/util/Set;

    goto :goto_5

    :cond_8
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v0

    :goto_5
    move-object/from16 v19, v0

    check-cast v19, Ljava/util/Collection;

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$expiredPermissions:Ljava/util/Set;

    goto :goto_6

    :cond_9
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpiredPermissions()Ljava/util/Set;

    move-result-object v0

    :goto_6
    move-object/from16 v20, v0

    check-cast v20, Ljava/util/Collection;

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v21

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    if-eqz v4, :cond_a

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long/2addr v10, v8

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    goto :goto_7

    :cond_a
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v0

    :goto_7
    move-object/from16 v24, v0

    if-eqz v5, :cond_b

    :goto_8
    move-object/from16 v25, v5

    goto :goto_9

    :cond_b
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :goto_9
    move-object v14, v3

    invoke-direct/range {v14 .. v25}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0, v3}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :cond_d
    :goto_a
    :try_start_3
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_e

    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "No current access token to refresh"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_e
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v0

    :goto_b
    iget-object v3, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v3}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v3, :cond_f

    if-eqz v2, :cond_f

    invoke-interface {v3, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_f
    throw v0
.end method
