.class public Lnet/aihelp/core/db/BaseSQLiteHelper;
.super Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;
.source "BaseSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;,
        Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;
    }
.end annotation


# instance fields
.field private contract:Lnet/aihelp/core/db/IDatabaseContract;

.field private listener:Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V
    .locals 3

    invoke-interface {p2}, Lnet/aihelp/core/db/IDatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lnet/aihelp/core/db/IDatabaseContract;->getDatabaseVersion()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    return-void
.end method

.method private createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {v0}, Lnet/aihelp/core/db/IDatabaseContract;->getCreateTableQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {v0}, Lnet/aihelp/core/db/IDatabaseContract;->getTableNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0, p1}, Lnet/aihelp/core/db/BaseSQLiteHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/db/BaseSQLiteHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception v0

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return p2

    :cond_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    throw p2

    :cond_4
    return v1
.end method

.method private migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lnet/aihelp/core/db/IMigrateContract;",
            ">;I)Z"
        }
    .end annotation

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/db/IMigrateContract;

    invoke-interface {v0, p1}, Lnet/aihelp/core/db/IMigrateContract;->migrate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move p2, p3

    goto :goto_3

    :catchall_0
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    throw p2

    :catch_2
    const/4 p2, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    if-nez p2, :cond_4

    invoke-direct {p0, p1, p3}, Lnet/aihelp/core/db/BaseSQLiteHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    :cond_4
    return p2
.end method


# virtual methods
.method public declared-synchronized clearDatabase()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/core/db/BaseSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/db/BaseSQLiteHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)Z
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
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/db/BaseSQLiteHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-direct {p0, p1}, Lnet/aihelp/core/db/BaseSQLiteHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/db/BaseSQLiteHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result p1

    iget-object p2, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->listener:Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;->DOWNGRADE:Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;

    iget-object p3, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {p3}, Lnet/aihelp/core/db/IDatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;->onDbMigrationSuccess(Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;->DOWNGRADE:Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;

    iget-object p3, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {p3}, Lnet/aihelp/core/db/IDatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;->onDbMigrationFailed(Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object p3, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {p3, p2}, Lnet/aihelp/core/db/IDatabaseContract;->getMigratorsForUpgrade(I)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3, p2}, Lnet/aihelp/core/db/BaseSQLiteHelper;->migrate(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)Z

    move-result p1

    iget-object p2, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->listener:Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;->UPGRADE:Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;

    iget-object p3, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {p3}, Lnet/aihelp/core/db/IDatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;->onDbMigrationSuccess(Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;->UPGRADE:Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;

    iget-object p3, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    invoke-interface {p3}, Lnet/aihelp/core/db/IDatabaseContract;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;->onDbMigrationFailed(Lnet/aihelp/core/db/BaseSQLiteHelper$MigrationType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/db/BaseSQLiteHelper;->listener:Lnet/aihelp/core/db/BaseSQLiteHelper$IDbMigrationListener;

    return-void
.end method
