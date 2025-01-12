.class public Lcom/intlgame/auth/LineAuth;
.super Ljava/lang/Object;
.source "LineAuth.java"

# interfaces
.implements Lcom/intlgame/core/auth/AuthInterface;


# instance fields
.field private final LINE_LOGIN_REPORT_TYPE:Ljava/lang/String;

.field private final LINE_LOGIN_REQUEST_CODE:I

.field private lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LineLogin"

    iput-object v0, p0, Lcom/intlgame/auth/LineAuth;->LINE_LOGIN_REPORT_TYPE:Ljava/lang/String;

    const/16 v0, 0xe

    iput v0, p0, Lcom/intlgame/auth/LineAuth;->LINE_LOGIN_REQUEST_CODE:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] LineLogin initialize start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/auth/LineAuth;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/intlgame/common/LineUtil;->initialize(Ljava/lang/String;)V

    sget-object p1, Lcom/intlgame/common/LineUtil;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    iput-object p1, p0, Lcom/intlgame/auth/LineAuth;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/auth/LineAuth;)Lcom/linecorp/linesdk/api/LineApiClient;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/auth/LineAuth;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    return-object p0
.end method

.method private setLineLoginCallback(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] setLineLoginCallback is start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/intlgame/LineLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    new-instance v1, Lcom/intlgame/auth/LineAuth$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/intlgame/auth/LineAuth$2;-><init>(Lcom/intlgame/auth/LineAuth;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAuthOverTime()I
    .locals 2

    const-string v0, "getAuthOverTime from channel line"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, "jp.naver.line.android"

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/intlgame/api/auth/INTLAuth;->getPluginAuthOverTime(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public login(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] methodID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Line login with permissions : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->extra_json_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/common/LineUtil;->checkSDKVersionIsEnable()Z

    move-result v0

    const/16 v2, 0x11

    const/16 v3, 0x65

    const-string v4, "Line"

    const/16 v5, 0xe

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] LINE_CHECK_SDK_VERSION_ENABLE is 1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] line login need android os >= 4.2 !"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-direct {p2, v0, v1, v2}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(III)V

    iput v5, p2, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iput-object v4, p2, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] LINE_CHECK_SDK_VERSION_ENABLE is 0 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/intlgame/auth/LineAuth;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-nez v0, :cond_2

    new-instance p2, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v1, 0xd

    const-string v6, "make sure LINE_CHANNEL_ID in \'assets/INTLConfig.ini\'"

    invoke-direct {p2, v0, v2, v1, v6}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iput-object v4, p2, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iput v5, p2, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    iget v2, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-direct {p0, v0, v2}, Lcom/intlgame/auth/LineAuth;->setLineLoginCallback(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p2, Lcom/linecorp/linesdk/Scope;->PROFILE:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/linecorp/linesdk/Scope;->OPENID_CONNECT:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {v0}, Lcom/linecorp/linesdk/Scope;->convertToScopeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    new-instance p2, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->scopes(Ljava/util/List;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] lineLogin with permission : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/common/LineUtil;->getLineChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->build()Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    move-result-object p2

    invoke-static {v0, v2, p2}, Lcom/linecorp/linesdk/auth/LineLoginApi;->getLoginIntent(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] loginWithPermissions error, Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v7, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v8, 0x270f

    const/16 v10, 0x3e8

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v9, "line error occur"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iput-object v4, v0, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iput v5, v0, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iget-object p2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v3, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const-string p2, "LineLogin"

    invoke-static {p2, p1}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] catch exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch exception : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IIILjava/lang/String;)V

    iput v5, v0, Lcom/intlgame/api/auth/INTLAuthResult;->channelid_:I

    iput-object v4, v0, Lcom/intlgame/api/auth/INTLAuthResult;->channel_:Ljava/lang/String;

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v3, v0, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public logout(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 6

    invoke-static {}, Lcom/intlgame/common/LineUtil;->checkSDKVersionIsEnable()Z

    move-result v0

    const/16 v1, 0x69

    const/16 v2, 0x11

    const-string v3, "[ "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] LINE_CHECK_SDK_VERSION_ENABLE is 1 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] line login need android os >= 4.2 !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v2, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/intlgame/api/INTLResult;-><init>(III)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] LINE_CHECK_SDK_VERSION_ENABLE is 0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/intlgame/auth/LineAuth;->lineApiClient:Lcom/linecorp/linesdk/api/LineApiClient;

    if-nez v0, :cond_2

    new-instance v0, Lcom/intlgame/api/INTLResult;

    iget v3, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v4, 0xd

    const-string v5, "make sure LINE_CHANNEL_ID in \'assets/INTLConfig.ini\'"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/intlgame/auth/LineAuth$1;

    invoke-direct {v1, p0, p1}, Lcom/intlgame/auth/LineAuth$1;-><init>(Lcom/intlgame/auth/LineAuth;Lcom/intlgame/api/INTLBaseParams;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
