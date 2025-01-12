.class public Lcom/tdatamaster/tdm/database/TDMDataBase;
.super Ljava/lang/Object;
.source "TDMDataBase.java"


# static fields
.field private static final DBName:Ljava/lang/String; = "tdm.db"

.field private static final DBTable:Ljava/lang/String; = "DataMaster"

.field private static final DBVersion:I = 0x2

.field private static final KEY_Data:Ljava/lang/String; = "Data"

.field private static final KEY_EventID:Ljava/lang/String; = "EventId"

.field private static final KEY_Len:Ljava/lang/String; = "Len"

.field private static final KEY_SrcID:Ljava/lang/String; = "SrcId"

.field private static final PKEY_ID:Ljava/lang/String; = "Id"

.field private static final TAG:Ljava/lang/String; = "TDMDataBase"

.field private static instance:Lcom/tdatamaster/tdm/database/TDMDataBase;

.field private static mContext:Landroid/content/Context;

.field private static mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mInitialized:Z

    return-void
.end method

.method private native DataBaseInit()V
.end method

.method public static getInstance()Lcom/tdatamaster/tdm/database/TDMDataBase;
    .locals 1

    sget-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->instance:Lcom/tdatamaster/tdm/database/TDMDataBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tdatamaster/tdm/database/TDMDataBase;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/database/TDMDataBase;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->instance:Lcom/tdatamaster/tdm/database/TDMDataBase;

    :cond_0
    sget-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->instance:Lcom/tdatamaster/tdm/database/TDMDataBase;

    return-object v0
.end method


# virtual methods
.method public closeDB()V
    .locals 4

    sget-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const-string v1, "TDMDataBase"

    if-nez v0, :cond_0

    const-string v0, "mDBHelper is null!"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tdatamaster/tdm/database/DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "closeDB, close Exception"

    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception Track: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createDB()Z
    .locals 5

    sget-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "TDMDataBase"

    const-string v1, "createDB, mContext is null"

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tdatamaster/tdm/database/DBHelper;

    sget-object v1, Lcom/tdatamaster/tdm/database/TDMDataBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const-string v3, "tdm.db"

    const-string v4, "DataMaster"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/tdatamaster/tdm/database/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public deleteEvent(J)Z
    .locals 7

    const-string v0, "Exception Track: "

    const-string v1, "db.close"

    sget-object v2, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const/4 v3, 0x0

    const-string v4, "TDMDataBase"

    if-nez v2, :cond_0

    const-string p1, "mDBHelper is null, please call createDB first"

    invoke-static {v4, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/tdatamaster/tdm/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "deleteEvent, GetDB Exception"

    invoke-static {v4, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v5, :cond_1

    const-string p1, "deleteEvent, db is null"

    invoke-static {v4, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    :try_start_1
    const-string p1, "DataMaster"

    const-string p2, "Id=?"

    invoke-virtual {v5, p1, p2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "deleteEvent, delete Exception"

    invoke-static {v4, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v2

    :goto_3
    if-eqz v5, :cond_3

    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw p1
.end method

.method public deleteTopEvent()Z
    .locals 10

    const-string v0, "Exception Track: "

    const-string v1, "db.close"

    sget-object v2, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const/4 v3, 0x0

    const-string v4, "TDMDataBase"

    if-nez v2, :cond_0

    const-string v0, "mDBHelper is null, please call createDB first"

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/tdatamaster/tdm/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "deleteTopEvent, GetDB Exception"

    invoke-static {v4, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    if-nez v2, :cond_1

    const-string v0, "deleteTopEvent, db is null"

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const-string v6, "select Id from DataMaster order by Id DESC limit 1"

    :try_start_1
    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    new-array v6, v7, [Ljava/lang/String;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    const-string v8, "DataMaster"

    const-string v9, "Id=?"

    invoke-virtual {v2, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v3, v7

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_2
    const-string v6, "deleteTopEvent, Exception"

    invoke-static {v4, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v3

    :goto_3
    if-eqz v2, :cond_4

    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
.end method

.method public getCount()I
    .locals 7

    const-string v0, "Exception Track: "

    const-string v1, "db.close"

    sget-object v2, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const-string v3, "TDMDataBase"

    const/4 v4, -0x1

    if-nez v2, :cond_0

    const-string v0, "mDBHelper is null, please call createDB first"

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/tdatamaster/tdm/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "getCount, GetDB Exception"

    invoke-static {v3, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    if-nez v2, :cond_1

    const-string v0, "getCount, db is null"

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    const-string v6, "select Id from DataMaster"

    :try_start_1
    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_2
    const-string v6, "getCount, Cursor Exception"

    invoke-static {v3, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v4

    :goto_3
    if-eqz v2, :cond_3

    invoke-static {v3, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0
.end method

.method public getEvents(I)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/tdatamaster/tdm/defines/DBEvent;",
            ">;"
        }
    .end annotation

    move/from16 v1, p1

    const-string v2, "Exception Track: "

    const-string v3, "db.close"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const-string v5, "TDMDataBase"

    if-nez v0, :cond_0

    const-string v0, "mDBHelper is null, please call createDB first"

    invoke-static {v5, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/tdatamaster/tdm/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "getEvents, GetDB Exception"

    invoke-static {v5, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v6

    :goto_0
    if-nez v7, :cond_1

    const-string v0, "getEvents, db is null"

    invoke-static {v5, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select * from DataMaster order by Id DESC limit "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-virtual {v7, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gtz v6, :cond_2

    const-string v1, "getEvents, db is empty"

    invoke-static {v5, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-ge v1, v6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    move v8, v6

    :goto_2
    if-ge v8, v1, :cond_5

    new-instance v15, Lcom/tdatamaster/tdm/defines/DBEvent;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v9, 0x4

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    move-object v9, v15

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/tdatamaster/tdm/defines/DBEvent;-><init>(JIII[B)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    :goto_4
    invoke-static {v5, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "getEvents, Cursor Exception"

    invoke-static {v5, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    return-object v4

    :goto_6
    if-eqz v7, :cond_7

    invoke-static {v5, v3}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v0
.end method

.method public getTopEvent()Lcom/tdatamaster/tdm/defines/DBEvent;
    .locals 14

    const-string v0, "Exception Track: "

    const-string v1, "db.close"

    sget-object v2, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const/4 v3, 0x0

    const-string v4, "TDMDataBase"

    if-nez v2, :cond_0

    const-string v0, "mDBHelper is null, please call createDB first"

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/tdatamaster/tdm/database/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "getTopEvent, GetDB Exception"

    invoke-static {v4, v5}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    const-string v0, "getTopEvent, db is null"

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string v5, "select * from DataMaster order by Id DESC limit 1"

    :try_start_1
    invoke-virtual {v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/tdatamaster/tdm/defines/DBEvent;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/tdatamaster/tdm/defines/DBEvent;-><init>(JIII[B)V

    move-object v3, v6

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_2
    const-string v6, "getTopEvent, rawQuery Exception"

    invoke-static {v4, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-object v3

    :goto_3
    if-eqz v2, :cond_4

    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mInitialized:Z

    if-nez v0, :cond_0

    sput-object p1, Lcom/tdatamaster/tdm/database/TDMDataBase;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tdatamaster/tdm/database/TDMDataBase;->DataBaseInit()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tdatamaster/tdm/database/TDMDataBase;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public insertEvent(JII[BI)Z
    .locals 7

    const-string v0, "Exception Track: "

    const-string v1, "db.close"

    sget-object v2, Lcom/tdatamaster/tdm/database/TDMDataBase;->mDBHelper:Lcom/tdatamaster/tdm/database/DBHelper;

    const/4 v3, 0x0

    const-string v4, "TDMDataBase"

    if-nez v2, :cond_0

    const-string p1, "mDBHelper is null, please call createDB first"

    invoke-static {v4, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Lcom/tdatamaster/tdm/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "insertEvent, GetDB Exception"

    invoke-static {v4, v6}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    if-nez v2, :cond_1

    const-string p1, "insertEvent, db is null"

    invoke-static {v4, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Id"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "EventId"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "SrcId"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Len"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "Data"

    invoke-virtual {v3, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    const-string p1, "DataMaster"

    invoke-virtual {v2, p1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "insertEvent, insert Exception"

    invoke-static {v4, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p1, 0x1

    return p1

    :goto_3
    if-eqz v2, :cond_3

    invoke-static {v4, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw p1
.end method
