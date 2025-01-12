.class public Lnet/aihelp/ui/helper/ConversationHelper;
.super Ljava/lang/Object;
.source "ConversationHelper.java"


# static fields
.field private static final REGEX_IMAGE:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

.field private static final REGEX_RICH_TEXT:Ljava/lang/String; = "(http:|https:)(//)\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg))|(http:|https:)(//)((?!\").)*"

.field private static final REGEX_VIDEO:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

.field private static sFakeTimeStamp:I = 0xa


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

.method public static getBotReply(Ljava/lang/String;)Lnet/aihelp/data/model/cs/ElvaBotMsg;
    .locals 0

    invoke-static {p0}, Lnet/aihelp/ui/helper/ElvaBotHelper;->getLocalReply(Ljava/lang/String;)Lnet/aihelp/data/model/cs/ElvaBotMsg;

    move-result-object p0

    return-object p0
.end method

.method private static getChatTimeStampList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-boolean v4, Lnet/aihelp/common/CustomConfig$CustomerService;->isMessageTimestampVisible:Z

    if-eqz v4, :cond_1

    const-string v4, "chatTimestamp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/aihelp/ui/helper/ConversationHelper;->prepareHistoryTimeStamp(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    invoke-direct {v5}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;-><init>()V

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setTimeStamp(J)V

    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setMsgType(I)V

    aget-object v3, v3, v4

    invoke-virtual {v5, v3}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setSupportName(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lnet/aihelp/ui/helper/ConversationHelper;->prepareSupportNickname(Lorg/json/JSONObject;Lnet/aihelp/data/model/cs/ChatHistoryEntity;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setMsgType(I)V

    const-string v3, ""

    invoke-virtual {v5, v3}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setSupportName(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static getConversationJSONObjectKey(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getSupportName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getSupportName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDefaultMsg()Lnet/aihelp/data/model/cs/ElvaBotMsg;
    .locals 1

    invoke-static {}, Lnet/aihelp/ui/helper/ElvaBotHelper;->getDefaultReply()Lnet/aihelp/data/model/cs/ElvaBotMsg;

    move-result-object v0

    return-object v0
.end method

.method public static getRetrievedMsgList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0}, Lnet/aihelp/ui/helper/ConversationHelper;->getChatTimeStampList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    invoke-static {v2}, Lnet/aihelp/ui/helper/ConversationHelper;->getConversationJSONObjectKey(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/aihelp/ui/helper/ConversationHelper;->getSupportMsgAfterLogin(Lnet/aihelp/data/model/cs/ChatHistoryEntity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetrievedMsgList, Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static getSupportMsgAfterLogin(Lnet/aihelp/data/model/cs/ChatHistoryEntity;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMessageFromServer(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x3eb

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getMsgType()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    const-string v3, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getMsgType()I

    move-result v8

    const/4 v9, 0x2

    const-string v10, ""

    if-ne v8, v2, :cond_3

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getSupportNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setNickname(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const-string p0, "(http:|https:)(//)\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg))|(http:|https:)(//)((?!\").)*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 v2, 0xa

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v2, 0x6

    :cond_4
    :goto_0
    move-object p0, p1

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 v2, 0x7

    goto :goto_0

    :cond_6
    move-object p0, p1

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    move v2, v9

    :goto_3
    invoke-virtual {v1, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    const-string v2, ";"

    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result p0

    if-ne p0, v9, :cond_9

    invoke-static {p1, v0, v1}, Lnet/aihelp/ui/helper/ConversationHelper;->replaceMediaUrls(Ljava/lang/String;Ljava/util/ArrayList;Lnet/aihelp/data/model/cs/ConversationMsg;)V

    :cond_9
    return-object v0
.end method

.method public static getSupportReplyMsg(Ljava/lang/String;)Lnet/aihelp/data/model/cs/ConversationMsg;
    .locals 8

    const-string v0, "nickname"

    const-string v1, "msg"

    const-string v2, "time"

    new-instance v3, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {v3}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMessageFromServer(Z)V

    const/16 v5, 0x3eb

    invoke-virtual {v3, v5}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    :cond_0
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    const-string v1, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v4, 0x8

    goto :goto_0

    :cond_1
    const-string v1, "(http:|https:)(//)\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg))|(http:|https:)(//)((?!\").)*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 v4, 0xa

    :cond_2
    :goto_0
    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setNickname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v3
.end method

.method public static getUserFormMsgList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    move-object v2, p0

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v1, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {v1}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    const/16 v3, 0x3eb

    invoke-virtual {v1, v3}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    const-string v3, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0, v1}, Lnet/aihelp/ui/helper/ConversationHelper;->replaceMediaUrls(Ljava/lang/String;Ljava/util/ArrayList;Lnet/aihelp/data/model/cs/ConversationMsg;)V

    return-object v0
.end method

.method public static getUserTextMsg(ZLjava/lang/String;)Lnet/aihelp/data/model/cs/ConversationMsg;
    .locals 2

    new-instance v0, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {v0}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    if-eqz p0, :cond_1

    const/16 p0, 0x3eb

    goto :goto_1

    :cond_1
    const/16 p0, 0x3e9

    :goto_1
    invoke-virtual {v0, p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWithdrawTimeStamp(Ljava/lang/String;)J
    .locals 4

    const-string v0, "withdrawkey"

    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_0
    return-wide v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v1
.end method

.method private static prepareHistoryTimeStamp(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, "[0-9]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    invoke-direct {v3}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setMsgType(I)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setTimeStamp(J)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static prepareSupportNickname(Lorg/json/JSONObject;Lnet/aihelp/data/model/cs/ChatHistoryEntity;)V
    .locals 4

    const-string v0, "assigneeinfo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getSupportName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "nickname"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setSupportNickname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private static replaceMediaUrls(Ljava/lang/String;Ljava/util/ArrayList;Lnet/aihelp/data/model/cs/ConversationMsg;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ")V"
        }
    .end annotation

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, ""

    const/16 v6, 0x3eb

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {v8}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v9

    sget v11, Lnet/aihelp/ui/helper/ConversationHelper;->sFakeTimeStamp:I

    add-int/lit8 v12, v11, 0x1

    sput v12, Lnet/aihelp/ui/helper/ConversationHelper;->sFakeTimeStamp:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    invoke-virtual {v8, v7}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMessageFromServer(Z)V

    const/4 v7, 0x6

    invoke-virtual {v8, v7}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    invoke-virtual {v8, v6}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    invoke-virtual {v8, v4}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v3, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {v8}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getTimeStamp()J

    move-result-wide v9

    sget v11, Lnet/aihelp/ui/helper/ConversationHelper;->sFakeTimeStamp:I

    add-int/lit8 v12, v11, 0x1

    sput v12, Lnet/aihelp/ui/helper/ConversationHelper;->sFakeTimeStamp:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    invoke-virtual {v8, v7}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMessageFromServer(Z)V

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgType(I)V

    invoke-virtual {v8, v6}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgStatus(I)V

    invoke-virtual {v8, v4}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
