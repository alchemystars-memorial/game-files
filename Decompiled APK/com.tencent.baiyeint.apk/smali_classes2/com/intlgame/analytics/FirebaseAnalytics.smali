.class public Lcom/intlgame/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source "FirebaseAnalytics.java"

# interfaces
.implements Lcom/intlgame/core/analytics/AnalyticsInterface;


# static fields
.field private static final DEFAULT_EVENT_NAME:Ljava/lang/String; = "default_event"

.field public static mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private mInstallationId:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/intlgame/analytics/FirebaseAnalytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstanceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/intlgame/analytics/FirebaseAnalytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstallationId:Ljava/lang/String;

    return-object p1
.end method

.method private getInstallationIdSync()V
    .locals 2

    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/intlgame/analytics/FirebaseAnalytics$2;

    invoke-direct {v1, p0}, Lcom/intlgame/analytics/FirebaseAnalytics$2;-><init>(Lcom/intlgame/analytics/FirebaseAnalytics;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private getInstanceIdAsync()V
    .locals 2

    sget-object v0, Lcom/intlgame/analytics/FirebaseAnalytics;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/intlgame/analytics/FirebaseAnalytics$1;

    invoke-direct {v1, p0}, Lcom/intlgame/analytics/FirebaseAnalytics$1;-><init>(Lcom/intlgame/analytics/FirebaseAnalytics;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public getInstallationID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstallationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/intlgame/analytics/FirebaseAnalytics;->getInstallationIdSync()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] INTLFirebase getInstallationID is: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstallationId:Ljava/lang/String;

    return-object p1
.end method

.method public getInstanceID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstanceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/intlgame/analytics/FirebaseAnalytics;->getInstanceIdAsync()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] INTLFirebase getInstanceID is: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/analytics/FirebaseAnalytics;->mInstanceId:Ljava/lang/String;

    return-object p1
.end method

.method public getUAID()Ljava/lang/String;
    .locals 4

    const-string v0, "Firebase getUAID"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/intlgame/analytics/FirebaseAnalytics;->getInstanceID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/intlgame/analytics/FirebaseAnalytics;->getInstallationID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "Firebase getUAID success"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 4

    const-string v0, "Firebase Report init start"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lcom/intlgame/analytics/FirebaseAnalytics;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p0}, Lcom/intlgame/analytics/FirebaseAnalytics;->getInstanceIdAsync()V

    invoke-direct {p0}, Lcom/intlgame/analytics/FirebaseAnalytics;->getInstallationIdSync()V

    const-string v0, "INTLFirebase"

    const-string v1, "20.0.0"

    const-string v2, "Firebase"

    const-string v3, ""

    invoke-static {v0, v1, v2, v1, v3}, Lcom/intlgame/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoginNotify(Lcom/intlgame/api/auth/INTLAuthResult;)V
    .locals 0

    return-void
.end method

.method public onLogoutNotify()V
    .locals 0

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] reportEvent eventName : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", params : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "NULL"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extraJson : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "eventName is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const-string p2, "default_event"

    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object p3, Lcom/intlgame/analytics/FirebaseAnalytics;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez p3, :cond_3

    const-string p1, "Firebase cannot reportEvent, init first please"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_3
    return-void
.end method

.method public reportRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] reportRevenue eventName : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", params : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "NULL"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extraJson : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "eventName is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const-string p2, "default_event"

    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p5, "currency"

    invoke-virtual {p1, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    const-string p5, "value"

    invoke-virtual {p1, p5, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    sget-object p3, Lcom/intlgame/analytics/FirebaseAnalytics;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
