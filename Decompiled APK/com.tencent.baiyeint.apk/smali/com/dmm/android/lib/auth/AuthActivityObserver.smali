.class public final Lcom/dmm/android/lib/auth/AuthActivityObserver;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/AuthActivityObserver;",
        "",
        "()V",
        "listener",
        "Lcom/dmm/android/lib/auth/AuthenticationListener;",
        "cancel",
        "",
        "hasObserver",
        "",
        "notifyCancel",
        "reason",
        "Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;",
        "notifyFailure",
        "error",
        "Lcom/dmm/android/lib/auth/model/HttpError;",
        "notifySuccess",
        "accessToken",
        "",
        "observe",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

.field private static listener:Lcom/dmm/android/lib/auth/AuthenticationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;

    invoke-direct {v0}, Lcom/dmm/android/lib/auth/AuthActivityObserver;-><init>()V

    sput-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->INSTANCE:Lcom/dmm/android/lib/auth/AuthActivityObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/dmm/android/lib/auth/AuthenticationListener;

    sput-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    return-void
.end method

.method public final hasObserver()Z
    .locals 1

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final notifyCancel(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/AuthenticationListener;->onCancel(Lcom/dmm/android/lib/auth/listener/TokenEventCancelReason;)V

    :cond_0
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/dmm/android/lib/auth/AuthenticationListener;

    sput-object p1, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    return-void
.end method

.method public final notifyFailure(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/AuthenticationListener;->onFailure(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_0
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/dmm/android/lib/auth/AuthenticationListener;

    sput-object p1, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    return-void
.end method

.method public final notifySuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/AuthenticationListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/dmm/android/lib/auth/AuthenticationListener;

    sput-object p1, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    return-void
.end method

.method public final observe(Lcom/dmm/android/lib/auth/AuthenticationListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    if-nez v0, :cond_0

    sput-object p1, Lcom/dmm/android/lib/auth/AuthActivityObserver;->listener:Lcom/dmm/android/lib/auth/AuthenticationListener;

    :cond_0
    return-void
.end method
