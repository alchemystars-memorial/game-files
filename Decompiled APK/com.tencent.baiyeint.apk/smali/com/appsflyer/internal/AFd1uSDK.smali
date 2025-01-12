.class public Lcom/appsflyer/internal/AFd1uSDK;
.super Lcom/appsflyer/internal/AFc1aSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1aSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final afWarnLog:[Lcom/appsflyer/internal/AFc1kSDK;


# instance fields
.field protected final AFVersionDeclaration:Lcom/appsflyer/internal/AFd1qSDK;

.field public final afRDLog:Lcom/appsflyer/internal/AFa1tSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v1, Lcom/appsflyer/internal/AFc1kSDK;->afRDLog:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFc1kSDK;->valueOf:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFc1kSDK;->onInstallConversionFailureNative:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/AFc1kSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/appsflyer/internal/AFd1uSDK;->afWarnLog:[Lcom/appsflyer/internal/AFc1kSDK;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1zSDK;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFd1uSDK;-><init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->values()Lcom/appsflyer/internal/AFc1kSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1kSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1kSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1kSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/appsflyer/internal/AFc1aSDK;-><init>(Lcom/appsflyer/internal/AFc1kSDK;[Lcom/appsflyer/internal/AFc1kSDK;Lcom/appsflyer/internal/AFc1zSDK;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1zSDK;->afRDLog()Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1qSDK;

    sget-object p1, Lcom/appsflyer/internal/AFd1uSDK;->afWarnLog:[Lcom/appsflyer/internal/AFc1kSDK;

    array-length p2, p1

    :goto_0
    if-ge v3, p2, :cond_0

    aget-object p3, p1, v3

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-eq v0, p3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    iget p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:I

    iget-object p2, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1kSDK;

    if-gtz p1, :cond_1

    sget-object p1, Lcom/appsflyer/internal/AFc1kSDK;->values:Lcom/appsflyer/internal/AFc1kSDK;

    if-eq p2, p1, :cond_2

    sget-object p1, Lcom/appsflyer/internal/AFc1kSDK;->values:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFInAppEventType:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object p1, Lcom/appsflyer/internal/AFc1kSDK;->values:Lcom/appsflyer/internal/AFc1kSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFKeystoreWrapper:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 3

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->afDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1aSDK;->AFLogger:Lcom/appsflyer/internal/AFd1gSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFd1gSDK;->valueOf:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    invoke-direct {v2, v1, v0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1ySDK;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1aSDK;->AFLogger:Lcom/appsflyer/internal/AFd1gSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1gSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1lSDK;->AFInAppEventType:Ljava/util/Set;

    sget-object v1, Lcom/appsflyer/internal/AFc1kSDK;->getLevel:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/appsflyer/internal/AFc1kSDK;->values:Lcom/appsflyer/internal/AFc1kSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1uSDK;->AFLogger()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1qSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(I)Lcom/appsflyer/internal/AFa1tSDK;

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v0

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->afDebugLog()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/appsflyer/internal/AFb1tSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1tSDK;-><init>()V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "af_v"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;

    new-instance v0, Lcom/appsflyer/internal/AFb1tSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1tSDK;-><init>()V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "af_v2"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1tSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUEUE: failed to update the event, is missing DevKey? Error: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final AFInAppEventType(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFc1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "JSON toString of eventParams map returns null"

    const-string v3, "*Non-printing character*"

    const-string v4, "\\p{C}"

    const-string v5, "Unexpected error"

    const-string v6, ""

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFd1uSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v7, v0, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v11, :cond_0

    :try_start_1
    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v9, v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v5, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    move-object v0, v6

    move-object v11, v9

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v9

    :goto_1
    const-string v12, "JSONObject return null String object. Trying to create AFJsonObject."

    invoke-static {v12, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :try_start_2
    new-array v0, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v0, v12

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3e

    invoke-static {v12, v12}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    rsub-int/lit8 v13, v13, -0x1

    int-to-char v13, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    add-int/lit8 v14, v14, 0x1f

    invoke-static {v8, v13, v14}, Lcom/appsflyer/internal/AFa1vSDK;->values(ICI)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v13, "AFInAppEventType"

    new-array v14, v10, [Ljava/lang/Class;

    const-class v15, Ljava/util/Map;

    aput-object v15, v14, v12

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v8

    goto :goto_5

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v11, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v11, v8

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    throw v2

    :cond_2
    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    :goto_2
    invoke-static {v5, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_3
    const-string v2, "AFJsonObject return null String object."

    invoke-static {v2, v0, v10}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_4
    move-object v0, v6

    :goto_5
    if-nez v11, :cond_3

    goto :goto_6

    :cond_3
    move-object v6, v11

    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Payload contains non-printing characters"

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    move-object v0, v6

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": preparing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/appsflyer/internal/AFc1aSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1qSDK;

    invoke-virtual {v2, v7, v0}, Lcom/appsflyer/internal/AFb1qSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/appsflyer/internal/AFc1aSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1uSDK;

    iget-object v2, v1, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/AFc1uSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1tSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFc1wSDK;

    move-result-object v0

    return-object v0
.end method

.method protected final afDebugLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1uSDK;->afRDLog:Lcom/appsflyer/internal/AFa1tSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    return-object v0
.end method

.method protected afRDLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
