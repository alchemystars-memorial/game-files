.class public Lcom/dmm/games/android/volley/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/games/android/volley/Response$ErrorListener;,
        Lcom/dmm/games/android/volley/Response$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/dmm/games/android/volley/Cache$Entry;

.field public final error:Lcom/dmm/games/android/volley/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/games/android/volley/Response;->intermediate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/games/android/volley/Response;->result:Ljava/lang/Object;

    iput-object v0, p0, Lcom/dmm/games/android/volley/Response;->cacheEntry:Lcom/dmm/games/android/volley/Cache$Entry;

    iput-object p1, p0, Lcom/dmm/games/android/volley/Response;->error:Lcom/dmm/games/android/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/dmm/games/android/volley/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/dmm/games/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/games/android/volley/Response;->intermediate:Z

    iput-object p1, p0, Lcom/dmm/games/android/volley/Response;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/dmm/games/android/volley/Response;->cacheEntry:Lcom/dmm/games/android/volley/Cache$Entry;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/games/android/volley/Response;->error:Lcom/dmm/games/android/volley/VolleyError;

    return-void
.end method

.method public static error(Lcom/dmm/games/android/volley/VolleyError;)Lcom/dmm/games/android/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dmm/games/android/volley/VolleyError;",
            ")",
            "Lcom/dmm/games/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/dmm/games/android/volley/Response;

    invoke-direct {v0, p0}, Lcom/dmm/games/android/volley/Response;-><init>(Lcom/dmm/games/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/dmm/games/android/volley/Cache$Entry;)Lcom/dmm/games/android/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/dmm/games/android/volley/Cache$Entry;",
            ")",
            "Lcom/dmm/games/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/dmm/games/android/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/dmm/games/android/volley/Response;-><init>(Ljava/lang/Object;Lcom/dmm/games/android/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/android/volley/Response;->error:Lcom/dmm/games/android/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
