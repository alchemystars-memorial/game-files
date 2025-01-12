.class final Lcom/dmm/android/lib/auth/api/HttpClient$sync$future$1;
.super Ljava/lang/Object;
.source "HttpClient.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/api/HttpClient;->sync(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "kotlin.jvm.PlatformType",
        "call"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $request:Lcom/dmm/android/lib/auth/api/HttpRequest;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/api/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpClient$sync$future$1;->$request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 2

    sget-object v0, Lcom/dmm/android/lib/auth/api/HttpConnection;->INSTANCE:Lcom/dmm/android/lib/auth/api/HttpConnection;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/HttpClient$sync$future$1;->$request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    invoke-virtual {v0, v1}, Lcom/dmm/android/lib/auth/api/HttpConnection;->connect(Lcom/dmm/android/lib/auth/api/HttpRequest;)Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/HttpClient$sync$future$1;->call()Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-result-object v0

    return-object v0
.end method
