.class public Lcom/uqm/crashsight/proguard/a;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/proguard/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "com.uqm.crashsight"

.field private static b:I = 0x0

.field private static c:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z = false


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

.method private static a()Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    const-string v2, "currentActivity"

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/proguard/a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "[CrashSight-GameAgent]"

    const-string v2, "Failed to get activity of Unity."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uqm/crashsight/proguard/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "com.uqm.crashsight"

    sput-object v1, Lcom/uqm/crashsight/proguard/a;->a:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/uqm/crashsight/proguard/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/uqm/crashsight/proguard/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;ZLjava/lang/Object;)Z
    .locals 4

    sget-object v0, Lcom/uqm/crashsight/proguard/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/uqm/crashsight/proguard/a;->d:Ljava/lang/ref/WeakReference;

    :cond_1
    sget-object v0, Lcom/uqm/crashsight/proguard/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string v2, "[CrashSight-GameAgent]"

    if-nez v0, :cond_3

    const-string p0, "initCrashReport: Context is null. crashSight initialize terminated."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "initCrashReport: Please input appId when initCrashReport."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uqm/crashsight/proguard/a$1;

    invoke-direct {v1, p1, p2, v0, p0}, Lcom/uqm/crashsight/proguard/a$1;-><init>(ZLjava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->e()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static b()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.cocos2dx.lib.Cocos2dxActivity"

    const-string v2, "getContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/uqm/crashsight/proguard/a$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "[CrashSight-GameAgent]"

    const-string v2, "Failed to get activity of Cocos."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static c()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.epicgames.ue4.GameActivity"

    const-string v2, "Get"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/uqm/crashsight/proguard/a$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "[CrashSight-GameAgent]"

    const-string v2, "Failed to get activity of Unreal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static d()Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.epicgames.unreal.GameActivity"

    const-string v2, "Get"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v0, v3}, Lcom/uqm/crashsight/proguard/a$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "[CrashSight-GameAgent]"

    const-string v2, "Failed to get activity of Unreal."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private static e()Landroid/app/Activity;
    .locals 5

    sget-object v0, Lcom/uqm/crashsight/proguard/a;->c:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_0
    sget v0, Lcom/uqm/crashsight/proguard/a;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    const-string v4, "[CrashSight-GameAgent]"

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const-string v0, "Game type has not been set."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/uqm/crashsight/proguard/a;->e:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/uqm/crashsight/proguard/a;->e:Z

    const-string v0, "Trying :com.epicgames.ue4.GameActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Trying :com.epicgames.unreal.GameActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->d()Landroid/app/Activity;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "Trying :com.unity3d.player.UnityPlayer"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->a()Landroid/app/Activity;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_8

    const-string v0, "Trying :org.cocos2dx.lib.Cocos2dxActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->b()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "trying :com.epicgames.unreal.GameActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->d()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "trying :com.epicgames.ue4.GameActivity"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->c()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->a()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/proguard/a;->b()Landroid/app/Activity;

    move-result-object v0

    :cond_8
    :goto_0
    if-eqz v0, :cond_9

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/uqm/crashsight/proguard/a;->c:Ljava/lang/ref/WeakReference;

    :cond_9
    sget-object v0, Lcom/uqm/crashsight/proguard/a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_a
    return-object v1
.end method
