.class public final Lp/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/centauri/oversea/data/Cfg;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/centauri/oversea/data/Cfg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lp/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lp/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/centauri/oversea/data/Cfg;
    .locals 3

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "APNetCfg"

    const-string v1, "getCfg setIDCAndEnv---"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->setIDCAndEnv()V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-virtual {p0}, Lp/d;->e()Z

    invoke-virtual {p0}, Lp/d;->d()Z

    :cond_1
    const-string v2, "release"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lp/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/centauri/oversea/data/Cfg;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  does not deploy "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " env!!,please check the params and the  config file in assets"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lp/d;->a()Lcom/centauri/oversea/data/Cfg;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/data/Cfg;->mIpList:[Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lp/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " configuration contains in server config"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " configuration contains in file config"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v2, "release"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "test"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not exist,please help to check the name"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-string v0, "configuration has found"

    :goto_2
    const-string v1, "APNetCfg"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "domain_first"

    invoke-static {v0, v1}, Lo/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_4

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/GlobalData;->setUseDomainFirst(Z)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idc should be set before init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .locals 14

    const-string v0, "iplist"

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "centauri_oversea_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "centauri_oversea_cp.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v2

    move-object v5, v3

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const-string v2, ""

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "APNetCfg"

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_oversea_cp.cfg file is missing,if is cp mode ,this must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "config"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v4, v5

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "mode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "domain"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "reportdomain"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "detectdomain"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " detectdomain in configFile : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_3
    invoke-virtual {p0, v3}, Lp/d;->f(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    array-length v12, v7

    if-nez v12, :cond_4

    const-string v12, "ipList is empty in centauri_oversea_cp.cfg file, no return"

    invoke-static {v6, v12}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v12, "release"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v8, p0, Lp/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v12, Lcom/centauri/oversea/data/Cfg;

    invoke-direct {v12, v9, v7, v10, v11}, Lcom/centauri/oversea/data/Cfg;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string v12, "test"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lp/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v12, Lcom/centauri/oversea/data/Cfg;

    invoke-direct {v12, v9, v7, v10, v11}, Lcom/centauri/oversea/data/Cfg;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v8, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v0, 0x1

    return v0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v5

    :catchall_2
    move-exception v0

    move-object v3, v5

    :goto_6
    move-object v5, v3

    :goto_7
    if-eqz v5, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_8
    throw v0
.end method

.method public final e()Z
    .locals 10

    const-string v0, "k_ip_list"

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->IDCInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v4

    iget-object v4, v4, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    const-string v5, "k_domain"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "k_domain_hb"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "detect_domain"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    return v3

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    :cond_4
    invoke-virtual {p0, v8}, Lp/d;->f(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "APNetCfg"

    const-string v8, "initServerCfg  OK"

    invoke-static {v1, v8}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "release"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lp/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/centauri/oversea/data/Cfg;

    invoke-direct {v2, v5, v0, v6, v7}, Lcom/centauri/oversea/data/Cfg;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "test"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lp/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/centauri/oversea/data/Cfg;

    invoke-direct {v2, v5, v0, v6, v7}, Lcom/centauri/oversea/data/Cfg;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public final f(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    new-array p1, v0, [Ljava/lang/String;

    return-object p1
.end method
