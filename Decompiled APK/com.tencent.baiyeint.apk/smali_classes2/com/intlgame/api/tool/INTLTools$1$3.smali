.class Lcom/intlgame/api/tool/INTLTools$1$3;
.super Ljava/lang/Object;
.source "INTLTools.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLTools$1;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/api/tool/INTLTools$1;


# direct methods
.method constructor <init>(Lcom/intlgame/api/tool/INTLTools$1;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/api/tool/INTLTools$1$3;->this$0:Lcom/intlgame/api/tool/INTLTools$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    const-string v0, "Review onCanceled"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void
.end method
