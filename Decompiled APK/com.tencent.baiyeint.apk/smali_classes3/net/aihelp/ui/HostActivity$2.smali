.class Lnet/aihelp/ui/HostActivity$2;
.super Ljava/lang/Object;
.source "HostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/HostActivity;->finishFormPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/HostActivity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/HostActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/HostActivity$2;->this$0:Lnet/aihelp/ui/HostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/HostActivity$2;->this$0:Lnet/aihelp/ui/HostActivity;

    invoke-virtual {v0}, Lnet/aihelp/ui/HostActivity;->onBackPressed()V

    return-void
.end method
