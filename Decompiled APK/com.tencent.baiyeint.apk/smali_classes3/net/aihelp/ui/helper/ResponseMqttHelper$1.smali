.class final Lnet/aihelp/ui/helper/ResponseMqttHelper$1;
.super Lnet/aihelp/core/net/http/callback/UploadCallback;
.source "ResponseMqttHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/helper/ResponseMqttHelper;->tryUploadLog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/UploadCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/UploadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/helper/ResponseMqttHelper$1;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 0

    const-string p1, "upload log success"

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void
.end method
