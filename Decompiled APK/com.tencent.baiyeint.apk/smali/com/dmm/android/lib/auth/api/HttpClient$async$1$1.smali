.class final Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;
.super Ljava/lang/Object;
.source "HttpClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->call()Lcom/dmm/android/lib/auth/api/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $error:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $isCancel:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $response:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/dmm/android/lib/auth/api/HttpClient$async$1;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/api/HttpClient$async$1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->this$0:Lcom/dmm/android/lib/auth/api/HttpClient$async$1;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$isCancel:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$error:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$isCancel:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->this$0:Lcom/dmm/android/lib/auth/api/HttpClient$async$1;

    iget-object v0, v0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->$callback:Lcom/dmm/android/lib/auth/api/HttpCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/api/HttpCallback;->onCancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$error:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->this$0:Lcom/dmm/android/lib/auth/api/HttpClient$async$1;

    iget-object v0, v0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->$callback:Lcom/dmm/android/lib/auth/api/HttpCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$error:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/dmm/android/lib/auth/api/HttpCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/dmm/android/lib/auth/api/HttpResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->this$0:Lcom/dmm/android/lib/auth/api/HttpClient$async$1;

    iget-object v0, v0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->$callback:Lcom/dmm/android/lib/auth/api/HttpCallback;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;->$response:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/dmm/android/lib/auth/api/HttpResponse;

    invoke-interface {v0, v1}, Lcom/dmm/android/lib/auth/api/HttpCallback;->onResponse(Lcom/dmm/android/lib/auth/api/HttpResponse;)V

    :cond_2
    :goto_0
    return-void
.end method
