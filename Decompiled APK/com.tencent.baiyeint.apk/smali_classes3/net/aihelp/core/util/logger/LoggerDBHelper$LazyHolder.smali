.class Lnet/aihelp/core/util/logger/LoggerDBHelper$LazyHolder;
.super Ljava/lang/Object;
.source "LoggerDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/logger/LoggerDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lnet/aihelp/core/util/logger/LoggerDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/aihelp/core/util/logger/LoggerDBHelper;

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/util/logger/LoggerDBHelper$LazyHolder$1;

    invoke-direct {v2}, Lnet/aihelp/core/util/logger/LoggerDBHelper$LazyHolder$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/util/logger/LoggerDBHelper;-><init>(Landroid/content/Context;Lnet/aihelp/core/db/IDatabaseContract;)V

    sput-object v0, Lnet/aihelp/core/util/logger/LoggerDBHelper$LazyHolder;->INSTANCE:Lnet/aihelp/core/util/logger/LoggerDBHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
