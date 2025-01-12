.class public Lnet/aihelp/data/local/ElvaRepository;
.super Lnet/aihelp/core/mvp/AbsRepository;
.source "ElvaRepository.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getMatchedFaqListForAlert(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v3}, Lnet/aihelp/data/localize/data/FaqHelper;->getRawFlatFaqArray()Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-static {v3, v5}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isHidden"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "keyWords"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "kmMainid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "question"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "similarQuestions"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v11, 0x3

    if-nez v7, :cond_5

    const-string v7, ","

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v12, v4

    :goto_1
    if-ge v12, v8, :cond_4

    aget-object v13, v7, v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v13

    if-lt v13, v11, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    const/4 v14, 0x1

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v14, v13

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    if-lt v7, v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-lt v6, v11, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lnet/aihelp/data/local/ElvaRepository$1;

    move-object v5, p0

    invoke-direct {v1, p0}, Lnet/aihelp/data/local/ElvaRepository$1;-><init>(Lnet/aihelp/data/local/ElvaRepository;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v8, p1

    invoke-direct {v6, v4, v3, v7, v8}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-object v0
.end method
