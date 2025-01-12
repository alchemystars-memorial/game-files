.class Lnet/aihelp/data/localize/data/FaqHelper$1;
.super Ljava/lang/Object;
.source "FaqHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/localize/data/FaqHelper;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/aihelp/data/localize/data/FaqHelper;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper$1;->this$0:Lnet/aihelp/data/localize/data/FaqHelper;

    iput-object p2, p0, Lnet/aihelp/data/localize/data/FaqHelper$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
