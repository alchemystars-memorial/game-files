.class Lnet/aihelp/ui/cs/BaseCSFragment$1;
.super Lnet/aihelp/ui/wrapper/TextWatcherWrapper;
.source "BaseCSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/BaseCSFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/BaseCSFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/BaseCSFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment$1;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/TextWatcherWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lnet/aihelp/ui/cs/BaseCSFragment$1;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->onTextChange(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lnet/aihelp/ui/cs/BaseCSFragment$1;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-static {p2, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->access$000(Lnet/aihelp/ui/cs/BaseCSFragment;Ljava/lang/CharSequence;)V

    return-void
.end method
