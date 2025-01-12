.class public interface abstract Lcom/dmm/android/lib/auth/listener/SessionEventListener;
.super Ljava/lang/Object;
.source "SessionEventListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0003H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
        "",
        "onCancelSessions",
        "",
        "reason",
        "Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;",
        "onCompleteSession",
        "result",
        "Lcom/dmm/android/lib/auth/model/SessionID;",
        "onFailedSession",
        "error",
        "Lcom/dmm/android/lib/auth/model/HttpError;",
        "onStartSession",
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
.method public abstract onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V
.end method

.method public abstract onCompleteSession(Lcom/dmm/android/lib/auth/model/SessionID;)V
.end method

.method public abstract onFailedSession(Lcom/dmm/android/lib/auth/model/HttpError;)V
.end method

.method public abstract onStartSession()V
.end method
