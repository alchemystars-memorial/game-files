.class public final enum Lnet/aihelp/data/localize/data/FaqHelper;
.super Ljava/lang/Enum;
.source "FaqHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/data/FaqHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/data/FaqHelper;

.field public static final FAQ_HOT_TOPICS:Ljava/lang/String; = "faqHotTopics"

.field public static final FAQ_NOTIFICATION:Ljava/lang/String; = "faqNotification"

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

.field private static isDataSourcePrepared:Z


# instance fields
.field private faqQuestionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private rawFaqMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private rawFlatFaqArray:Lorg/json/JSONArray;

.field private rootSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private subSectionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/aihelp/data/localize/data/FaqHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/data/FaqHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/data/FaqHelper;

    aput-object v0, v1, v2

    sput-object v1, Lnet/aihelp/data/localize/data/FaqHelper;->$VALUES:[Lnet/aihelp/data/localize/data/FaqHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->subSectionsMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    return-void
.end method

.method private filterFaqById(Lorg/json/JSONArray;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {p1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "faqId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kmMainid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kmContentId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqContentEntity(Lorg/json/JSONObject;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private flatRawFaqJsonArray(Lorg/json/JSONArray;)V
    .locals 11

    const-string v0, "secImgUrl"

    const-string v1, "sectionName"

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-static {p1, v3}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "faqs"

    invoke-static {v4, v5}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_0

    const-string v5, "hiddenFaqs"

    invoke-static {v4, v5}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-static {v5, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "noHtmlContent"

    const-string v9, "content"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnet/aihelp/utils/Styles;->getNoTemplateFaqContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "isHidden"

    const-string v9, "isSectionHidden"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    move v10, v2

    :goto_2
    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v8, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private getFaqContentEntity(Lorg/json/JSONObject;)Lnet/aihelp/data/model/faq/FaqContentEntity;
    .locals 3

    new-instance v0, Lnet/aihelp/data/model/faq/FaqContentEntity;

    invoke-direct {v0}, Lnet/aihelp/data/model/faq/FaqContentEntity;-><init>()V

    const-string v1, "sectionName"

    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setSectionName(Ljava/lang/String;)V

    const-string v1, "secImgUrl"

    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setIconUrl(Ljava/lang/String;)V

    const-string v1, "kmMainid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqMainId(Ljava/lang/String;)V

    const-string v1, "faqId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqDisplayId(Ljava/lang/String;)V

    const-string v1, "kmContentId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqContentId(Ljava/lang/String;)V

    const-string v1, "question"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqTitle(Ljava/lang/String;)V

    const-string v1, "keyWords"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqKeywords(Ljava/lang/String;)V

    const-string v1, "similarQuestions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setSimilarQuestions(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqContent(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/Styles;->getNoTemplateFaqContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/faq/FaqContentEntity;->setFaqNoHtmlContent(Ljava/lang/String;)V

    return-object v0
.end method

.method private getFaqListEntity(ILorg/json/JSONObject;)Lnet/aihelp/data/model/faq/FaqListEntity;
    .locals 3

    new-instance v0, Lnet/aihelp/data/model/faq/FaqListEntity;

    const-string v1, "kmMainid"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "question"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "imgUrl"

    invoke-static {p2, p1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->setIconUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method private getLanguageBasedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s_%s_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isDuplicate(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/faq/FaqListEntity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isFaqDataAlreadyPrepared()Z
    .locals 1

    const/16 v0, 0x3e9

    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isAlreadyLocalized(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lnet/aihelp/data/localize/data/FaqHelper;->isDataSourcePrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareFaqQuestionsMap(Lorg/json/JSONArray;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "faqs"

    invoke-static {v2, v3}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "hiddenFaqs"

    invoke-static {v2, v3}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, "sectionId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isSectionHidden"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    iget-object v5, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move v6, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqListEntity(ILorg/json/JSONObject;)Lnet/aihelp/data/model/faq/FaqListEntity;

    move-result-object v7

    const-string v8, "sectionName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/aihelp/data/model/faq/FaqListEntity;->setSectionName(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private prepareRootSectionList(Lorg/json/JSONArray;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {p1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "faqs"

    invoke-static {v1, v2}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "sectionBName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    new-instance v3, Lnet/aihelp/data/model/faq/FaqListEntity;

    const-string v5, "sectionBId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "sectionBOrderNo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/faq/FaqListEntity;->setOrder(I)V

    const-string v4, "secParentImgUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/faq/FaqListEntity;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/aihelp/data/model/faq/FaqListEntity;->setSectionName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lnet/aihelp/data/model/faq/FaqListEntity;

    const-string v2, "sectionId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "sectionName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderNo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lnet/aihelp/data/model/faq/FaqListEntity;->setOrder(I)V

    const-string v2, "secImgUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/aihelp/data/model/faq/FaqListEntity;->setIconUrl(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v3}, Lnet/aihelp/data/localize/data/FaqHelper;->shouldIgnoreCurrentEntity(Lnet/aihelp/data/model/faq/FaqListEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private shouldIgnoreCurrentEntity(Lnet/aihelp/data/model/faq/FaqListEntity;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v3}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/data/FaqHelper;
    .locals 1

    const-class v0, Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/data/FaqHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/data/FaqHelper;
    .locals 1

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->$VALUES:[Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/data/FaqHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/data/FaqHelper;

    return-object v0
.end method


# virtual methods
.method public afterFaqEvaluated(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v0

    const-string v1, "evaluated_faqIds"

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/data/FaqHelper;->getLanguageBasedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v2

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/data/FaqHelper;->getLanguageBasedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const-string p1, "%s,%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getFaqById(Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqById(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object p1

    return-object p1
.end method

.method public getFaqById(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    invoke-direct {p0, p1, p2}, Lnet/aihelp/data/localize/data/FaqHelper;->filterFaqById(Lorg/json/JSONArray;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-direct {p0, p1, p2}, Lnet/aihelp/data/localize/data/FaqHelper;->filterFaqById(Lorg/json/JSONArray;Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object p1

    return-object p1
.end method

.method public getQuestionList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getRawFlatFaqArray()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getRawHotTopics()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    const-string v1, "faqHotTopics"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public getRawNotification()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    const-string v1, "faqNotification"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public getRootSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    return-object v0
.end method

.method public getSubSections(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->subSectionsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public hasSubsections(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->subSectionsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized prepareDataSource()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepareDataSource(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    const/16 v0, 0x3e9

    :try_start_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "faqlist"

    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareRootSectionList(Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareSubSectionsMap(Lorg/json/JSONArray;)V

    invoke-direct {p0, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareFaqQuestionsMap(Lorg/json/JSONArray;)V

    invoke-direct {p0, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->flatRawFaqJsonArray(Lorg/json/JSONArray;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/localize/data/FaqHelper$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/data/localize/data/FaqHelper$1;-><init>(Lnet/aihelp/data/localize/data/FaqHelper;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    sput-boolean p1, Lnet/aihelp/data/localize/data/FaqHelper;->isDataSourcePrepared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepareNotificationAndHotTopics()V
    .locals 8

    monitor-enter p0

    const/16 v0, 0x3f1

    :try_start_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "notice"

    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-static {v0, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {p0, v6, v5}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqListEntity(ILorg/json/JSONObject;)Lnet/aihelp/data/model/faq/FaqListEntity;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "noHtmlContent"

    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/aihelp/utils/Styles;->getNoTemplateFaqContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    const-string v5, "faqNotification"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    const-string v4, "faqNotification"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "faqList"

    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-static {v0, v3}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x6

    invoke-direct {p0, v4, v2}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqListEntity(ILorg/json/JSONObject;)Lnet/aihelp/data/model/faq/FaqListEntity;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "noHtmlContent"

    const-string v5, "content"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/aihelp/utils/Styles;->getNoTemplateFaqContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    const-string v3, "faqHotTopics"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    const-string v2, "faqHotTopics"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public prepareSubSectionsMap(Lorg/json/JSONArray;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "faqs"

    invoke-static {v2, v3}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "hiddenFaqs"

    invoke-static {v2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    :cond_0
    const-string v3, "sectionBId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sectionBName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lnet/aihelp/data/localize/data/FaqHelper;->subSectionsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-string v6, "sectionId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lnet/aihelp/data/localize/data/FaqHelper;->isDuplicate(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lnet/aihelp/data/model/faq/FaqListEntity;

    const/4 v8, 0x2

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "sectionName"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v6, v9}, Lnet/aihelp/data/model/faq/FaqListEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "secImgUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lnet/aihelp/data/model/faq/FaqListEntity;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lnet/aihelp/data/model/faq/FaqListEntity;->setSectionName(Ljava/lang/String;)V

    const-string v4, "isSectionHidden"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v7, v4}, Lnet/aihelp/data/model/faq/FaqListEntity;->setHidden(Z)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/aihelp/data/localize/data/FaqHelper;->subSectionsMap:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFaqMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rawFlatFaqArray:Lorg/json/JSONArray;

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->rootSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->subSectionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lnet/aihelp/data/localize/data/FaqHelper;->faqQuestionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    sput-object v0, Lnet/aihelp/common/Const;->FAQ_FILE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lnet/aihelp/data/localize/data/FaqHelper;->isDataSourcePrepared:Z

    return-void
.end method

.method public shouldShowQuestionFooter(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v0

    const-string v1, "evaluated_faqIds"

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/data/FaqHelper;->getLanguageBasedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
