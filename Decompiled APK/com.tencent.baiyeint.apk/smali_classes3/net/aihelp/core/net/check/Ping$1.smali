.class final Lnet/aihelp/core/net/check/Ping$1;
.super Ljava/lang/Object;
.source "Ping.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/check/Ping;->start(Ljava/lang/String;ILnet/aihelp/core/net/check/Ping$Callback;)Lnet/aihelp/core/net/check/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Lnet/aihelp/core/net/check/Ping;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/check/Ping;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/check/Ping$1;->val$p:Lnet/aihelp/core/net/check/Ping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/check/Ping$1;->val$p:Lnet/aihelp/core/net/check/Ping;

    invoke-static {v0}, Lnet/aihelp/core/net/check/Ping;->access$000(Lnet/aihelp/core/net/check/Ping;)V

    return-void
.end method
