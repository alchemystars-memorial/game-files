.class public Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;
.super Ljava/lang/Object;
.source "ApiExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/concurrent/ApiExecutorFactory$LazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory$LazyHolder;->HANDLER_EXECUTOR:Lnet/aihelp/core/util/concurrent/ApiExecutor;

    return-object v0
.end method
