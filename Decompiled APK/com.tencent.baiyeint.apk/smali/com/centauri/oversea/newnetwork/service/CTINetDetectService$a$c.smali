.class public final Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;->b:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iput-object p2, p0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v2, "task_id"

    iget-object v0, v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;->b:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    iget-object v3, v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    iget-object v0, v1, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a$c;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lorg/json/JSONArray;

    sget-object v0, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "ip"

    const-string v6, "dns"

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lr/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-string v9, ""

    move-object v10, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "APIPDetectTools"

    const-string v13, "Available input method locale: "

    const/4 v14, 0x1

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7, v11, v14}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v15

    const-string v1, "keyboard"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v1, p0

    goto :goto_1

    :cond_2
    move-object/from16 v1, p0

    goto :goto_0

    :cond_3
    invoke-static {v13}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v14

    const/4 v8, 0x0

    invoke-virtual {v10, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v10, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lo/b$a;->a:Lo/b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sysLocale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&inputLocale="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.oversea.sys.lang"

    invoke-virtual {v7, v1, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_10

    :try_start_0
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v7, "url"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Start process task:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ";url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    move-object v11, v9

    :goto_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    sget-object v15, Lo/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-nez v15, :cond_5

    sget-object v15, Lo/g;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-nez v15, :cond_5

    sget-object v15, Lo/g;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    move v13, v14

    goto :goto_4

    :cond_6
    move v13, v8

    :goto_4
    if-nez v13, :cond_d

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v13

    invoke-virtual {v13}, Lcom/centauri/oversea/api/CTIPayAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lr/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v8, v13

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v15, "host"

    if-eqz v13, :cond_b

    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v8

    move-object/from16 v16, v9

    const-wide/16 v8, 0x0

    :try_start_2
    invoke-static {v14, v13, v8, v9}, Lr/a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object/from16 v9, v16

    :goto_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v18, v4

    const-string v4, "sdk.oversea.ip.detect.dns.result"

    move-object/from16 v19, v5

    const-string/jumbo v5, "taskid="

    if-nez v14, :cond_9

    :try_start_3
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Lo/b$a;->a:Lo/b;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&result=succ&dnssvr="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dnssvr"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&host="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&time="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "time"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&ip="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    sget-object v8, Lo/b$a;->a:Lo/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&result=failed&dnssvr="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v14, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_a

    :cond_b
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v9

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result=ip_by_dns_is_null&taskid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "sdk.oversea.ip.detect.error"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v9

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "originUrl"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "currentHost"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "traceroute"

    invoke-static {v5}, Lr/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    const-string v9, "ping"

    const/4 v11, 0x4

    const/16 v12, 0xff

    invoke-static {v5, v11, v12}, Lr/a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "socket"

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v11

    const-string v12, "contents"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "response"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v7, v11, v12, v13}, Lr/a;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-class v5, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detect host "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lo/b$a;->a:Lo/b;

    const-string v9, "sdk.oversea.ip.detect.ip.time"

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v16, v9

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_10
    iget-object v0, v3, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    const/4 v1, 0x5

    goto :goto_d

    :cond_11
    :goto_c
    iget-object v0, v3, Lcom/centauri/oversea/newnetwork/service/CTINetDetectService;->a:Lcom/centauri/oversea/newnetwork/service/CTINetDetectService$a;

    const/4 v1, 0x3

    :goto_d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
