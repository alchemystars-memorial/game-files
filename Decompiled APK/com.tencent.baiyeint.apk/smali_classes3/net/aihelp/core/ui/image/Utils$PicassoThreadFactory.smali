.class Lnet/aihelp/core/ui/image/Utils$PicassoThreadFactory;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PicassoThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lnet/aihelp/core/ui/image/Utils$PicassoThread;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/image/Utils$PicassoThread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
