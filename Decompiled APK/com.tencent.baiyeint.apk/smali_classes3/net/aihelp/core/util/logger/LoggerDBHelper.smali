.class public Lnet/aihelp/core/util/logger/LoggerDBHelper;
.super Lnet/aihelp/core/db/BaseSQLiteHelper;
.source "LoggerDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/logger/LoggerDBHelper$LazyHolder;
    }
.end annotation


# static fields
.field private static final CREATE_LOGGER_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS LOG_MESSAGES( TIMESTAMP TEXT, MESSAGE TEXT, LEVEL TEXT, STACKTRACE TEXT);"

.field private static final DB_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/db/BaseSQLiteHelper;-><init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/core/util/logger/LoggerDBHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/logger/LoggerDBHelper$LazyHolder;->INSTANCE:Lnet/aihelp/core/util/logger/LoggerDBHelper;

    return-object v0
.end method
