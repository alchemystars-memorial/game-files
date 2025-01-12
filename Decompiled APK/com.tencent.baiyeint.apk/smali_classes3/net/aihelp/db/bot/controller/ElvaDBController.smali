.class public Lnet/aihelp/db/bot/controller/ElvaDBController;
.super Ljava/lang/Object;
.source "ElvaDBController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/db/bot/controller/ElvaDBController$LazyHolder;
    }
.end annotation


# instance fields
.field private final dbHelper:Lnet/aihelp/db/bot/ConversationSQLiteHelper;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/aihelp/db/bot/ConversationSQLiteHelper;->getInstance()Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/db/bot/controller/ElvaDBController;->dbHelper:Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/db/bot/controller/ElvaDBController$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/db/bot/controller/ElvaDBController;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/db/bot/controller/ElvaDBController;
    .locals 1

    sget-object v0, Lnet/aihelp/db/bot/controller/ElvaDBController$LazyHolder;->INSTANCE:Lnet/aihelp/db/bot/controller/ElvaDBController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearElvaMsg()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "uid=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lnet/aihelp/db/bot/controller/ElvaDBController;->dbHelper:Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    invoke-virtual {v2}, Lnet/aihelp/db/bot/ConversationSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "elva_bot"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getElvaMsgArray()Lorg/json/JSONArray;
    .locals 11

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/db/bot/controller/ElvaDBController;->dbHelper:Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    invoke-virtual {v2}, Lnet/aihelp/db/bot/ConversationSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v6, "uid = ? AND app_id = ? AND app_server = ?"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v4, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    aput-object v4, v7, v2

    const/4 v2, 0x1

    sget-object v4, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    aput-object v4, v7, v2

    const/4 v2, 0x2

    sget-object v4, Lnet/aihelp/common/API;->HOST_URL:Ljava/lang/String;

    aput-object v4, v7, v2

    const-string v4, "elva_bot"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "raw_response"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public storeElvaBotMsg(JLjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/db/bot/controller/ElvaDBController;->dbHelper:Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    invoke-virtual {v0}, Lnet/aihelp/db/bot/ConversationSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "elva_bot"

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Lnet/aihelp/db/util/ContentValuesUtil;->getElvaBotContentValues(JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
