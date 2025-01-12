.class public interface abstract Lcom/dmm/android/lib/auth/api/HttpCallback;
.super Ljava/lang/Object;
.source "HttpCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/HttpCallback;",
        "",
        "onCancel",
        "",
        "onError",
        "e",
        "",
        "onResponse",
        "response",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "onStart",
        "request",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
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
.method public abstract onCancel()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onResponse(Lcom/dmm/android/lib/auth/api/HttpResponse;)V
.end method

.method public abstract onStart(Lcom/dmm/android/lib/auth/api/HttpRequest;)V
.end method
