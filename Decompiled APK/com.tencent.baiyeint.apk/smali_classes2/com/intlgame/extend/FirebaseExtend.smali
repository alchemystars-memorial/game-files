.class public Lcom/intlgame/extend/FirebaseExtend;
.super Ljava/lang/Object;
.source "FirebaseExtend.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Firebase Extend initialize"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInstanceIDAsync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance p1, Lcom/intlgame/api/extend/INTLExtendResult;

    const/16 v0, 0x515

    const/4 v1, 0x0

    const-string v2, "Firebase"

    const-string v3, "getInstanceIDAsync"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/intlgame/api/extend/INTLExtendResult;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/intlgame/extend/FirebaseExtend$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/intlgame/extend/FirebaseExtend$2;-><init>(Lcom/intlgame/extend/FirebaseExtend;Ljava/lang/String;Lcom/intlgame/api/extend/INTLExtendResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/intlgame/extend/FirebaseExtend$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/intlgame/extend/FirebaseExtend$1;-><init>(Lcom/intlgame/extend/FirebaseExtend;Lcom/intlgame/api/extend/INTLExtendResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x0

    return-object p1
.end method
