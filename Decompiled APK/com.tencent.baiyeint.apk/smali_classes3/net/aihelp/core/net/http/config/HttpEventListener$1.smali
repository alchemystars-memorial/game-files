.class final Lnet/aihelp/core/net/http/config/HttpEventListener$1;
.super Ljava/lang/Object;
.source "HttpEventListener.java"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/http/config/HttpEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final nextCallId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lnet/aihelp/core/net/http/config/HttpEventListener$1;->nextCallId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/http/config/HttpEventListener$1;->nextCallId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    new-instance v0, Lnet/aihelp/core/net/http/config/HttpEventListener;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/http/config/HttpEventListener;-><init>(JLokhttp3/HttpUrl;J)V

    return-object v0
.end method
