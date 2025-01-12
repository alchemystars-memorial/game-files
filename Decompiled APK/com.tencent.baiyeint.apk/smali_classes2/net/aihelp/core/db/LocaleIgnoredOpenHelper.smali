.class public abstract Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocaleIgnoredOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v0, "SQLiteOpenHelper"

    sput-object v0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    const/4 v0, 0x1

    if-lt p4, v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iput p4, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mNewVersion:I

    iput-object p5, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Version must be >= 1, was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDatabaseLocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mIsInitializing:Z

    if-nez v0, :cond_2

    iget-object v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mName:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const v4, 0x10000010

    iget-object v5, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    iget v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mNewVersion:I

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    :try_start_1
    invoke-virtual {p0, v0}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :cond_4
    iget v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mNewVersion:I

    if-le v1, v2, :cond_5

    invoke-virtual {p0, v0, v1, v2}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v1, v2}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :goto_2
    iget v1, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v3, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mIsInitializing:Z

    return-object v0

    :catchall_1
    move-exception v1

    iput-boolean v3, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_7

    iget-object v2, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v2, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->getDatabaseLocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lnet/aihelp/core/db/LocaleIgnoredOpenHelper;->mEnableWriteAheadLogging:Z

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
