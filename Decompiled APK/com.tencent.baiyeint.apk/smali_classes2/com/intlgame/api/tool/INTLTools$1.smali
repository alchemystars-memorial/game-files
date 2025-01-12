.class Lcom/intlgame/api/tool/INTLTools$1;
.super Ljava/lang/Object;
.source "INTLTools.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/api/tool/INTLTools;->showRatingAlert()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$manager:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/ReviewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/api/tool/INTLTools$1;->val$manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Review request complete "

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    iget-object v0, p0, Lcom/intlgame/api/tool/INTLTools$1;->val$manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$1;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$1;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$2;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$2;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$3;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$3;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v0, Lcom/intlgame/api/tool/INTLTools$1$4;

    invoke-direct {v0, p0}, Lcom/intlgame/api/tool/INTLTools$1$4;-><init>(Lcom/intlgame/api/tool/INTLTools$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Review ex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Review ex but exception is null obj"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
