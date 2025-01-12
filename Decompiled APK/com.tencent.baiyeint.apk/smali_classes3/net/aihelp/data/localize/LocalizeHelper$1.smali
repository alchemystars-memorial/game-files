.class final Lnet/aihelp/data/localize/LocalizeHelper$1;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "LocalizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/localize/LocalizeHelper;->goFetchElvaBotData(Landroid/content/Context;)V
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


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/localize/LocalizeHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAsyncReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/localize/LocalizeHelper$1;->onAsyncReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncReqSuccess(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/data/localize/LocalizeHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/ui/helper/ElvaBotHelper;->initBot(Landroid/content/Context;)V

    return-void
.end method
