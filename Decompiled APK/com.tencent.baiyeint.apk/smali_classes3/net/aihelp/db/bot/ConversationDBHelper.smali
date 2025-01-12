.class public Lnet/aihelp/db/bot/ConversationDBHelper;
.super Ljava/lang/Object;
.source "ConversationDBHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearElvaMsg()V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/db/bot/ConversationDBHelper$2;

    invoke-direct {v1}, Lnet/aihelp/db/bot/ConversationDBHelper$2;-><init>()V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getElvaMsgArray()Lorg/json/JSONArray;
    .locals 1

    invoke-static {}, Lnet/aihelp/db/bot/controller/ElvaDBController;->getInstance()Lnet/aihelp/db/bot/controller/ElvaDBController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/db/bot/controller/ElvaDBController;->getElvaMsgArray()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static storeElvaMsg(JLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/db/bot/ConversationDBHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/aihelp/db/bot/ConversationDBHelper$1;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method
