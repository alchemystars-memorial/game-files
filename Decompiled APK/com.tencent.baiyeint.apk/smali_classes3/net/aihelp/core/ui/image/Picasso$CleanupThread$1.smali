.class Lnet/aihelp/core/ui/image/Picasso$CleanupThread$1;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/image/Picasso$CleanupThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/image/Picasso$CleanupThread;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso$CleanupThread;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$CleanupThread$1;->this$0:Lnet/aihelp/core/ui/image/Picasso$CleanupThread;

    iput-object p2, p0, Lnet/aihelp/core/ui/image/Picasso$CleanupThread$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/Picasso$CleanupThread$1;->val$e:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
