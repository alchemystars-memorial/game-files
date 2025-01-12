.class final Lnet/aihelp/core/net/check/TraceRoute$1;
.super Ljava/lang/Object;
.source "TraceRoute.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/check/TraceRoute;->start(Ljava/lang/String;Lnet/aihelp/core/net/check/TraceRoute$Callback;)Lnet/aihelp/core/net/check/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$t:Lnet/aihelp/core/net/check/TraceRoute;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/check/TraceRoute;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/check/TraceRoute$1;->val$t:Lnet/aihelp/core/net/check/TraceRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute$1;->val$t:Lnet/aihelp/core/net/check/TraceRoute;

    invoke-static {v0}, Lnet/aihelp/core/net/check/TraceRoute;->access$000(Lnet/aihelp/core/net/check/TraceRoute;)V

    return-void
.end method
