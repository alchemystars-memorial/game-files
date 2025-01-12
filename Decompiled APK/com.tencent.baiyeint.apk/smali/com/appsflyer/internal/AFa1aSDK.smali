.class public final Lcom/appsflyer/internal/AFa1aSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;
    }
.end annotation


# static fields
.field public static AFInAppEventType:J = 0x1f4L

.field public static AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AFKeystoreWrapper(Landroid/content/Context;Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p1, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1aSDK$AFa1xSDK;

    new-instance p1, Lcom/appsflyer/internal/AFa1aSDK$5;

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFa1aSDK$5;-><init>(Ljava/util/concurrent/Executor;)V

    instance-of p2, p0, Landroid/app/Activity;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    invoke-interface {p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
