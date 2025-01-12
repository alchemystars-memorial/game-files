.class public Lnet/aihelp/core/db/DropAndCreateDatabaseHelper;
.super Ljava/lang/Object;
.source "DropAndCreateDatabaseHelper.java"

# interfaces
.implements Lnet/aihelp/core/db/IMigrateContract;


# instance fields
.field private contract:Lnet/aihelp/core/db/IDatabaseContract;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/db/IDatabaseContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/db/DropAndCreateDatabaseHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

    return-void
.end method

.method private createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/db/DropAndCreateDatabaseHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

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

    iget-object v0, p0, Lnet/aihelp/core/db/DropAndCreateDatabaseHelper;->contract:Lnet/aihelp/core/db/IDatabaseContract;

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


# virtual methods
.method public migrate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/db/DropAndCreateDatabaseHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/db/DropAndCreateDatabaseHelper;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
