.class public interface abstract Lcom/dmm/android/lib/auth/service/TokenService;
.super Ljava/lang/Object;
.source "TokenService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u000b\u001a\u00020\u0003H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/service/TokenService;",
        "",
        "issueAccessToken",
        "",
        "authCode",
        "",
        "listener",
        "Lcom/dmm/android/lib/auth/listener/TokenEventListener;",
        "load",
        "Lcom/dmm/android/lib/auth/model/AccessToken;",
        "refreshAccessToken",
        "revokeAccessToken",
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
.method public abstract issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
.end method

.method public abstract load()Lcom/dmm/android/lib/auth/model/AccessToken;
.end method

.method public abstract refreshAccessToken(Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V
.end method

.method public abstract revokeAccessToken()V
.end method
