.class public interface abstract Lcom/dmm/android/lib/auth/AuthenticationListener;
.super Ljava/lang/Object;
.source "AuthActivityObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/AuthenticationListener;",
        "",
        "onCancel",
        "",
        "reason",
        "Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;",
        "onFailure",
        "error",
        "Lcom/dmm/android/lib/auth/model/HttpError;",
        "onSuccess",
        "accessToken",
        "",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
.end method

.method public abstract onFailure(Lcom/dmm/android/lib/auth/model/HttpError;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
