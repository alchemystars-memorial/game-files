.class public Lnet/aihelp/db/bot/ConversationSQLiteHelper;
.super Lnet/aihelp/core/db/BaseSQLiteHelper;
.source "ConversationSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/db/bot/ConversationSQLiteHelper$LazyHolder;
    }
.end annotation


# static fields
.field private static final CREATE_ELVA_TABLE:Ljava/lang/String; = "CREATE TABLE elva_bot (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT NOT NULL, app_id TEXT NOT NULL, app_server TEXT NOT NULL, time_stamp INTEGER UNIQUE,raw_response TEXT NOT NULL);"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/db/BaseSQLiteHelper;-><init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;Lnet/aihelp/db/bot/ConversationSQLiteHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/db/bot/ConversationSQLiteHelper;-><init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/db/bot/ConversationSQLiteHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/db/bot/ConversationSQLiteHelper$LazyHolder;->INSTANCE:Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    return-object v0
.end method
