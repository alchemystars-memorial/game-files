.class public Lnet/aihelp/data/local/FaqRepository;
.super Lnet/aihelp/core/mvp/AbsRepository;
.source "FaqRepository.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkWhetherHasSubSection(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/FaqHelper;->hasSubsections(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getMatchedFaqList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/FaqHelper;->getRawNotification()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v1}, Lnet/aihelp/data/localize/data/FaqHelper;->getRawHotTopics()Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v2}, Lnet/aihelp/data/localize/data/FaqHelper;->getRawFlatFaqArray()Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1, v4}, Lnet/aihelp/data/local/FaqRepository;->iteratorFaqList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1, p1, v4}, Lnet/aihelp/data/local/FaqRepository;->iteratorFaqList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2, p1, v4}, Lnet/aihelp/data/local/FaqRepository;->iteratorFaqList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public iteratorFaqList(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-static {v0, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "isHidden"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "kmMainid"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "question"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "noHtmlContent"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "%s,"

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-nez v8, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-direct {v7, v12, v9, v10, v1}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v9, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-direct {v7, v12, v9, v10, v1}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v9, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-object v0
.end method

.method public shouldShowQuestionFooter(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/localize/data/FaqHelper;->shouldShowQuestionFooter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
