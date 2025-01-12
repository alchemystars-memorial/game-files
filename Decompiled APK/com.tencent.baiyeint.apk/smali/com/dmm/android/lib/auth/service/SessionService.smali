.class public interface abstract Lcom/dmm/android/lib/auth/service/SessionService;
.super Ljava/lang/Object;
.source "SessionService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/SessionService;",
        "",
        "getSessionID",
        "Lcom/dmm/android/lib/auth/model/SessionID;",
        "issueSessionID",
        "",
        "userId",
        "",
        "accessToken",
        "listener",
        "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
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
.method public abstract getSessionID()Lcom/dmm/android/lib/auth/model/SessionID;
.end method

.method public abstract issueSessionID(Ljava/lang/String;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V
.end method
