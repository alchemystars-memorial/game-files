.class Lnet/aihelp/db/bot/ConversationSQLiteHelper$LazyHolder;
.super Ljava/lang/Object;
.source "ConversationSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/db/bot/ConversationSQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/db/bot/ConversationSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/aihelp/db/bot/ConversationSQLiteHelper$LazyHolder$1;

    invoke-direct {v2}, Lnet/aihelp/db/bot/ConversationSQLiteHelper$LazyHolder$1;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/db/bot/ConversationSQLiteHelper;-><init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;Lnet/aihelp/db/bot/ConversationSQLiteHelper$1;)V

    sput-object v0, Lnet/aihelp/db/bot/ConversationSQLiteHelper$LazyHolder;->INSTANCE:Lnet/aihelp/db/bot/ConversationSQLiteHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
