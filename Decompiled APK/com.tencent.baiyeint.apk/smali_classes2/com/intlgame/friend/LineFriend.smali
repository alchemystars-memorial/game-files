.class public Lcom/intlgame/friend/LineFriend;
.super Ljava/lang/Object;
.source "LineFriend.java"

# interfaces
.implements Lcom/intlgame/core/friend/FriendInterface;


# static fields
.field private static final LINE_FILE_PROVIDER:Ljava/lang/String; = ".line.provider"

.field private static final LINE_PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field private static final LINE_SELECT_CHAT_ACTIVITY_0:Ljava/lang/String; = "jp.naver.line.android.activity.selectchat.SelectChatActivity"

.field private static final LINE_SELECT_CHAT_ACTIVITY_11_1_0:Ljava/lang/String; = "com.linecorp.line.share.common.view.FullPickerLaunchActivity"

.field private static final LINE_SELECT_CHAT_ACTIVITY_8_0_0:Ljava/lang/String; = "jp.naver.line.android.activity.selectchat.SelectChatActivityLaunchActivity"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]  Line Friend initialize start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/common/LineUtil;->getLineSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INTLLine"

    const-string v2, "1.17.00.301"

    const-string v3, "Line"

    invoke-static {v1, v2, v3, v0, p1}, Lcom/intlgame/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLineComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7

    const-string v0, "["

    const-string v1, "jp.naver.line.android"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "[ "

    if-eqz v3, :cond_5

    :try_start_1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] Line APP Version is : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-nez v5, :cond_0

    return-object v2

    :cond_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "jp.naver.line.android.activity.selectchat.SelectChatActivity"

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :cond_1
    const-string v5, "com.linecorp.line.share.common.view.FullPickerLaunchActivity"

    const/16 v6, 0xb

    if-le v4, v6, :cond_2

    :try_start_2
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    if-ne v4, v6, :cond_4

    array-length v4, v3

    const/4 v6, 0x1

    if-gt v4, v6, :cond_3

    return-object v2

    :cond_3
    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v6, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "jp.naver.line.android.activity.selectchat.SelectChatActivityLaunchActivity"

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] PackageInfo is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] getLineComponentName catch exception : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] getLineComponentName "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " NameNotFoundException : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private sendToLine(Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;II)V
    .locals 13

    move-object v8, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] sendToLine is start with observerID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    move-object v9, p0

    invoke-direct {p0, p2}, Lcom/intlgame/friend/LineFriend;->getLineComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const/16 v3, 0xf

    const/4 v7, -0x1

    invoke-direct {v0, v6, v3, v7, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Line sendMessage image failed, need Line app installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] line component name : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget v0, v8, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v3, 0x2710

    const/4 v11, 0x0

    if-eq v0, v3, :cond_2

    const/16 v2, 0x2712

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] ,no support for Line sendMessage type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const/4 v1, 0x7

    invoke-direct {v0, v6, v1}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    invoke-static {v5, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v12, Lcom/intlgame/friend/LineFriend$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/intlgame/friend/LineFriend$1;-><init>(Lcom/intlgame/friend/LineFriend;Ljava/lang/String;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;IILandroid/content/Intent;)V

    new-array v0, v10, [Ljava/lang/String;

    iget-object v1, v8, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    aput-object v1, v0, v11

    invoke-static {v12, v0}, Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "text/plain"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v8, Lcom/intlgame/api/friend/INTLFriendReqInfo;->title_:Ljava/lang/String;

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v8, Lcom/intlgame/api/friend/INTLFriendReqInfo;->description_:Ljava/lang/String;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "SendToLine"

    invoke-static {v7, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Line send with text success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v6, v11, v11, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isBackendSupported(Lcom/intlgame/api/INTLBaseParams;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public needChannelUid(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public queryFriends(Lcom/intlgame/api/INTLBaseParams;IIZ)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[ "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ] not support queryFriends"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance p4, Lcom/intlgame/api/friend/INTLFriendResult;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p4, v0}, Lcom/intlgame/api/friend/INTLFriendResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x7

    :try_start_1
    iput p2, p4, Lcom/intlgame/api/friend/INTLFriendResult;->ret_code_:I

    iget p2, p4, Lcom/intlgame/api/friend/INTLFriendResult;->ret_code_:I

    invoke-static {p2}, Lcom/intlgame/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/intlgame/api/friend/INTLFriendResult;->ret_msg_:Ljava/lang/String;

    iget p2, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iput p2, p4, Lcom/intlgame/api/friend/INTLFriendResult;->method_id_:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, p4

    :catch_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ] queryFriends json exception"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    move-object p4, p2

    :goto_0
    const/16 p2, 0xca

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {p2, p4, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] Line sendMessage with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, -0x1

    const/16 v5, 0xc9

    if-nez v2, :cond_0

    new-instance p2, Lcom/intlgame/api/INTLResult;

    iget p1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const-string v2, "ActivityCached or reqInfo is null"

    invoke-direct {p2, p1, v3, v4, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, p2, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] Line sendMessage fail, ActivityCached or reqInfo is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v6, 0x2710

    const-string v7, ""

    if-eq v2, v6, :cond_2

    const/16 v6, 0x2712

    if-eq v2, v6, :cond_1

    new-instance v2, Lcom/intlgame/api/INTLResult;

    iget p1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v3, 0x7

    invoke-direct {v2, p1, v3, v4, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v2, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] Line sendMessage type not support "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-static {v2}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p2, Lcom/intlgame/api/INTLResult;

    iget p1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-direct {p2, p1, v3, v4, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, p2, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] Line sendMessage image failed, reqInfo.imagePath is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->description_:Ljava/lang/String;

    invoke-static {v2}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p2, Lcom/intlgame/api/INTLResult;

    iget p1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-direct {p2, p1, v3, v4, v7}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, p2, v0}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] Line sendMessage text failed, reqInfo.desc is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    iget p1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-direct {p0, p2, v0, v5, p1}, Lcom/intlgame/friend/LineFriend;->sendToLine(Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;II)V

    return-void
.end method

.method public share(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Line share is not support, with args reqInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v0, 0xc9

    invoke-static {v0, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
