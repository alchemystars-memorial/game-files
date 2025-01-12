.class public Lnet/aihelp/config/UserConfig$Builder;
.super Ljava/lang/Object;
.source "UserConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/config/UserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customData:Ljava/lang/String;

.field private isSyncCrmInfo:Z

.field private pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

.field private pushToken:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userTags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->userId:Ljava/lang/String;

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->userName:Ljava/lang/String;

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->userTags:Ljava/lang/String;

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->customData:Ljava/lang/String;

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->pushToken:Ljava/lang/String;

    sget-object v0, Lnet/aihelp/config/enums/PushPlatform;->FIREBASE:Lnet/aihelp/config/enums/PushPlatform;

    iput-object v0, p0, Lnet/aihelp/config/UserConfig$Builder;->pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

    return-void
.end method

.method private getFormattedCustomData()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lnet/aihelp/config/UserConfig$Builder;->userTags:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/aihelp/config/UserConfig$Builder;->userTags:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    const-string v3, "elva-tags"

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "hs-tags"

    iget-object v3, p0, Lnet/aihelp/config/UserConfig$Builder;->userTags:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lnet/aihelp/config/UserConfig$Builder;->customData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lnet/aihelp/config/UserConfig$Builder;->customData:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string v2, "elva-custom-metadata"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "hs-custom-metadata"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lnet/aihelp/config/UserConfig;
    .locals 11

    new-instance v10, Lnet/aihelp/config/UserConfig;

    iget-object v1, p0, Lnet/aihelp/config/UserConfig$Builder;->userId:Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/config/UserConfig$Builder;->userName:Ljava/lang/String;

    iget-object v3, p0, Lnet/aihelp/config/UserConfig$Builder;->serverId:Ljava/lang/String;

    iget-object v4, p0, Lnet/aihelp/config/UserConfig$Builder;->userTags:Ljava/lang/String;

    invoke-direct {p0}, Lnet/aihelp/config/UserConfig$Builder;->getFormattedCustomData()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lnet/aihelp/config/UserConfig$Builder;->isSyncCrmInfo:Z

    iget-object v7, p0, Lnet/aihelp/config/UserConfig$Builder;->pushToken:Ljava/lang/String;

    iget-object v8, p0, Lnet/aihelp/config/UserConfig$Builder;->pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lnet/aihelp/config/UserConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lnet/aihelp/config/enums/PushPlatform;Lnet/aihelp/config/UserConfig$1;)V

    return-object v10
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/aihelp/config/UserConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/config/UserConfig$Builder;->setUserId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/config/UserConfig$Builder;->setUserName(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lnet/aihelp/config/UserConfig$Builder;->setServerId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lnet/aihelp/config/UserConfig$Builder;->setUserTags(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lnet/aihelp/config/UserConfig$Builder;->setCustomData(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lnet/aihelp/config/UserConfig$Builder;->setSyncCrmInfo(Z)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig$Builder;->build()Lnet/aihelp/config/UserConfig;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lnet/aihelp/config/enums/PushPlatform;)Lnet/aihelp/config/UserConfig;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/config/UserConfig$Builder;->setUserId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/config/UserConfig$Builder;->setUserName(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lnet/aihelp/config/UserConfig$Builder;->setServerId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lnet/aihelp/config/UserConfig$Builder;->setUserTags(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lnet/aihelp/config/UserConfig$Builder;->setCustomData(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lnet/aihelp/config/UserConfig$Builder;->setSyncCrmInfo(Z)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Lnet/aihelp/config/UserConfig$Builder;->setPushToken(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lnet/aihelp/config/UserConfig$Builder;->setPushPlatform(Lnet/aihelp/config/enums/PushPlatform;)Lnet/aihelp/config/UserConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig$Builder;->build()Lnet/aihelp/config/UserConfig;

    move-result-object p1

    return-object p1
.end method

.method public setCustomData(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->customData:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setPrivacyPolicyAccepted(Z)Lnet/aihelp/config/UserConfig$Builder;
    .locals 0

    sput-boolean p1, Lnet/aihelp/common/Const;->PRIVACY_POLICY_ACCEPTED:Z

    return-object p0
.end method

.method public setPushPlatform(Lnet/aihelp/config/enums/PushPlatform;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->pushPlatform:Lnet/aihelp/config/enums/PushPlatform;

    return-object p0
.end method

.method public setPushToken(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->pushToken:Ljava/lang/String;

    return-object p0
.end method

.method public setServerId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->serverId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setSyncCrmInfo(Z)Lnet/aihelp/config/UserConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/config/UserConfig$Builder;->isSyncCrmInfo:Z

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    const-string v1, "%2F"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "+"

    const-string v1, "%2B"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    const-string v1, "%23"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "|"

    const-string v1, "%7C"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->userId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->userName:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setUserTags(Ljava/lang/String;)Lnet/aihelp/config/UserConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/config/UserConfig$Builder;->userTags:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
