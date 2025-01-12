.class final Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1iSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1xSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AFa1vSDK"
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/AFb1xSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/internal/AFb1xSDK;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventType(Lcom/appsflyer/internal/AFc1lSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/appsflyer/internal/AFd1sSDK;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appsflyer/internal/AFd1uSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1xSDK;->values()Lcom/appsflyer/internal/AFc1zSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1zSDK;->afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;

    move-result-object v0

    iget-object p1, p1, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    iget p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:I

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventType(I)V

    :cond_0
    return-void
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFc1lSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1jSDK;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFc1jSDK;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/appsflyer/internal/AFd1uSDK;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/appsflyer/internal/AFd1uSDK;

    instance-of v1, p1, Lcom/appsflyer/internal/AFd1sSDK;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/appsflyer/internal/AFd1sSDK;

    iget-object v4, v3, Lcom/appsflyer/internal/AFc1lSDK;->valueOf:Lcom/appsflyer/internal/AFc1jSDK;

    sget-object v5, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    iget v4, v3, Lcom/appsflyer/internal/AFc1lSDK;->values:I

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    :cond_1
    :goto_0
    if-eqz v6, :cond_3

    new-instance v4, Lcom/appsflyer/internal/AFd1aSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object v5

    new-instance v6, Lcom/appsflyer/internal/AFc1ySDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v5, v5, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/appsflyer/internal/AFc1ySDK;-><init>(Landroid/content/SharedPreferences;)V

    invoke-direct {v4, v3, v6}, Lcom/appsflyer/internal/AFd1aSDK;-><init>(Lcom/appsflyer/internal/AFd1sSDK;Lcom/appsflyer/internal/AFd1qSDK;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {v3}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v3

    iget-object v5, v3, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v6, v3, v4}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object v3, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    if-ne p2, v3, :cond_6

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p2

    const-string v3, "sentSuccessfully"

    const-string/jumbo v4, "true"

    invoke-interface {p2, v3, v4}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/appsflyer/internal/AFd1rSDK;

    if-nez p1, :cond_4

    new-instance p1, Lcom/appsflyer/internal/AFd1iSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1xSDK;)Landroid/app/Application;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFd1iSDK;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFd1iSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1rSDK;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/appsflyer/internal/AFb1rSDK;->values:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Resending Uninstall token to AF servers: "

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appsflyer/internal/AFd1iSDK;->valueOf(Ljava/lang/String;)V

    :cond_4
    iget-object p1, v0, Lcom/appsflyer/internal/AFc1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1nSDK;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1nSDK;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1nSDK;->AFInAppEventType(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    const-string v0, "send_background"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1xSDK;->values(Lcom/appsflyer/internal/AFb1xSDK;Z)Z

    :cond_5
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1xSDK;J)J

    :cond_6
    return-void

    :cond_7
    instance-of p1, p1, Lcom/appsflyer/internal/AFd1aSDK;

    if-eqz p1, :cond_8

    sget-object p1, Lcom/appsflyer/internal/AFc1jSDK;->values:Lcom/appsflyer/internal/AFc1jSDK;

    if-eq p2, p1, :cond_8

    new-instance p1, Lcom/appsflyer/internal/AFd1fSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFd1fSDK;-><init>(Lcom/appsflyer/internal/AFc1zSDK;)V

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1xSDK$AFa1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1xSDK;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1xSDK;)Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p2

    iget-object v0, p2, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFc1mSDK$3;

    invoke-direct {v1, p2, p1}, Lcom/appsflyer/internal/AFc1mSDK$3;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1lSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
