.class final Lnet/aihelp/ui/helper/MessageSyncHelper$1;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "MessageSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/MessageSyncHelper;->syncLogMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAsyncReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/helper/MessageSyncHelper$1;->onAsyncReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncReqSuccess(Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lnet/aihelp/core/util/logger/AIHelpLogger;->INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-virtual {p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->deleteAllCachedLogs()V

    return-void
.end method
