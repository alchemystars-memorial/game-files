.class public Lcom/intlgame/friend/FacebookFriend;
.super Ljava/lang/Object;
.source "FacebookFriend.java"

# interfaces
.implements Lcom/intlgame/core/friend/FriendInterface;


# instance fields
.field private final FACEBOOK_FRIEND_REPORT_TYPE:Ljava/lang/String;

.field private final FACEBOOK_INVITE_BATCH:Ljava/lang/String;

.field private final FACEBOOK_INVITE_CLASSIC:I

.field private final FACEBOOK_INVITE_MODE_KEY:Ljava/lang/String;

.field private final FACEBOOK_INVITE_PLAYER_FINDER:I

.field private final FACEBOOK_INVITE_RESULT_PEOPLE_JSON_NAME:Ljava/lang/String;

.field private final FACEBOOK_INVITE_TYPE:Ljava/lang/String;

.field private final FACEBOOK_INVITE_USER_LIST:Ljava/lang/String;

.field private final FACEBOOK_SHARE_CLASSIC:I

.field private final FACEBOOK_SHARE_FOR_GAMING:I

.field private final FACEBOOK_SHARE_MODE_KEY:Ljava/lang/String;

.field private final FACEBOOK_TAGGABLE_HASH_TAG:Ljava/lang/String;

.field private final FACEBOOK_TAGGABLE_PEOPLE_LIST:Ljava/lang/String;

.field private final FB_PACKAGE_NAME:Ljava/lang/String;

.field private final MESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private mCallbackManager:Lcom/facebook/CallbackManager;

.field private mCurCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FacebookFriend"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_FRIEND_REPORT_TYPE:Ljava/lang/String;

    const-string v0, "com.facebook.katana"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FB_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.facebook.orca"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->MESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->mCallbackManager:Lcom/facebook/CallbackManager;

    const-string v0, "inviteType"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_TYPE:Ljava/lang/String;

    const-string v0, "batch"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_BATCH:Ljava/lang/String;

    const-string v0, "userList"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_USER_LIST:Ljava/lang/String;

    const-string v0, "RequestRecipients"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_RESULT_PEOPLE_JSON_NAME:Ljava/lang/String;

    const-string v0, "friends"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_TAGGABLE_PEOPLE_LIST:Ljava/lang/String;

    const-string v0, "hashtag"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_TAGGABLE_HASH_TAG:Ljava/lang/String;

    const-string v0, "mode"

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_MODE_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_CLASSIC:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_INVITE_PLAYER_FINDER:I

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_SHARE_MODE_KEY:Ljava/lang/String;

    iput v1, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_SHARE_CLASSIC:I

    iput v2, p0, Lcom/intlgame/friend/FacebookFriend;->FACEBOOK_SHARE_FOR_GAMING:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] FacebookFriend init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->mCurCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/intlgame/common/FacebookUtil;->initialize(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/friend/FacebookFriend;->mCallbackManager:Lcom/facebook/CallbackManager;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/friend/FacebookFriend;->mCallbackManager:Lcom/facebook/CallbackManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/friend/FacebookFriend;)Lcom/facebook/CallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/friend/FacebookFriend;->mCallbackManager:Lcom/facebook/CallbackManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/friend/FacebookFriend;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/friend/FacebookFriend;->addFBFriendCallBackToMessageQueue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intlgame/friend/FacebookFriend;Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/friend/FacebookFriend;->setShareTaggablePeople(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intlgame/friend/FacebookFriend;Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/friend/FacebookFriend;->setShareHashTag(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    return-void
.end method

.method private addFBFriendCallBackToMessageQueue(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/intlgame/FacebookLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    new-instance v1, Lcom/intlgame/friend/FacebookFriend$4;

    invoke-direct {v1, p0, p1}, Lcom/intlgame/friend/FacebookFriend$4;-><init>(Lcom/intlgame/friend/FacebookFriend;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private createFacebookLinkOrImageContent(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;Lcom/intlgame/core/INTLInnerCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/intlgame/api/friend/INTLFriendReqInfo;",
            "Ljava/lang/String;",
            "Lcom/intlgame/core/INTLInnerCallback<",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with args methodID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget v0, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const-string v2, "need Messenger installed or login!"

    const/4 v6, -0x1

    const/16 v7, 0xf

    const-string v10, "] need Messenger installed or login!"

    const/16 v11, 0xb

    const/16 v12, 0xc9

    const/16 v13, 0x2711

    if-ne v0, v13, :cond_3

    iget-object v0, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->link_:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xca

    if-ne v5, v0, :cond_0

    iget-object v0, v8, Lcom/intlgame/friend/FacebookFriend;->mCurCtx:Landroid/content/Context;

    const-string v11, "com.facebook.orca"

    invoke-static {v0, v11}, Lcom/intlgame/api/tool/INTLTools;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v5, v7, v6, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v12, v0, v3}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v1, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->link_:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    if-ne v5, v12, :cond_1

    invoke-direct {p0, v0, v9, v3}, Lcom/intlgame/friend/FacebookFriend;->setShareTaggablePeople(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    invoke-direct {p0, v0, v9, v3}, Lcom/intlgame/friend/FacebookFriend;->setShareHashTag(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/intlgame/core/INTLInnerCallback;->onNotify(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] the link is null when share/send link, please check!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const-string v1, "the link is null when share/send link, please check!"

    invoke-direct {v0, v5, v11, v11, v1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/intlgame/core/INTLInnerCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto/16 :goto_0

    :cond_3
    iget v0, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v13, 0x2712

    const-string v14, "com.facebook.katana"

    if-ne v0, v13, :cond_6

    iget-object v0, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne v5, v12, :cond_4

    iget-object v0, v8, Lcom/intlgame/friend/FacebookFriend;->mCurCtx:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/intlgame/api/tool/INTLTools;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v5, v7, v6, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v12, v0, v3}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v7, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v7}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    new-instance v6, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v6}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    new-instance v10, Lcom/intlgame/friend/FacebookFriend$2;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/intlgame/friend/FacebookFriend$2;-><init>(Lcom/intlgame/friend/FacebookFriend;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;Lcom/intlgame/core/INTLInnerCallback;ILcom/facebook/share/model/SharePhoto$Builder;Lcom/facebook/share/model/SharePhotoContent$Builder;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v10, v0}, Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] the imagePath is null when share/send image, please check!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const-string v1, "the imagePath is null when share/send image, please check!"

    invoke-direct {v0, v5, v11, v11, v1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/intlgame/core/INTLInnerCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto/16 :goto_0

    :cond_6
    iget v0, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v13, 0x2714

    if-ne v0, v13, :cond_a

    iget-object v0, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->media_path_:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-ne v5, v12, :cond_7

    iget-object v0, v8, Lcom/intlgame/friend/FacebookFriend;->mCurCtx:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/intlgame/api/tool/INTLTools;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v5, v7, v6, v2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v12, v0, v3}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->media_path_:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/model/ShareVideoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    if-ne v5, v12, :cond_8

    invoke-direct {p0, v0, v9, v3}, Lcom/intlgame/friend/FacebookFriend;->setShareTaggablePeople(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    invoke-direct {p0, v0, v9, v3}, Lcom/intlgame/friend/FacebookFriend;->setShareHashTag(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/intlgame/core/INTLInnerCallback;->onNotify(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] the mediaPath is null when share/send video, please check!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const-string v1, "the mediaPath is null when share/send video, please check!"

    invoke-direct {v0, v5, v11, v11, v1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/intlgame/core/INTLInnerCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] not support type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v5, v2, v2, v1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/intlgame/core/INTLInnerCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    :goto_0
    return-void
.end method

.method private invite(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 9

    iget-object v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xca

    const/16 v2, 0xc9

    const-string v3, "["

    const/16 v4, 0xb

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/facebook/gamingservices/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    new-instance v5, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    iget-object v6, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->title_:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    iget-object v6, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->description_:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    iget-object v6, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    invoke-static {v6}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    const-string v7, "inviteType"

    invoke-static {v6, v7}, Lcom/intlgame/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "batch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "userList"

    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] invite userList json parse error, message : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " invite userList json parse error, message : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, v4, v4, p2}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p2, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-virtual {v5, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :goto_1
    invoke-virtual {v5}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/facebook/gamingservices/GameRequestDialog;->canShow(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/intlgame/friend/FacebookFriend;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/intlgame/friend/FacebookFriend$3;

    invoke-direct {v2, p0, p1}, Lcom/intlgame/friend/FacebookFriend$3;-><init>(Lcom/intlgame/friend/FacebookFriend;Lcom/intlgame/api/INTLBaseParams;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/gamingservices/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/intlgame/friend/FacebookFriend;->addFBFriendCallBackToMessageQueue(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/facebook/gamingservices/GameRequestDialog;->show(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const-string p2, "FacebookFriend"

    invoke-static {p2, p1}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]facebook invite dialog can not show now"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/16 v0, 0x270f

    const-string v3, "invite dialog can not show now"

    invoke-direct {p2, v1, v0, v0, v3}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v2, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] title or description in reqInfo is empty"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const-string v0, " title or desc in reqInfo is empty"

    invoke-direct {p2, v1, v4, v4, v0}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v2, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method private playerFinder(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 6

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xc9

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string v0, "FriendFinderDialog error : activity is null"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v3, Lcom/intlgame/api/INTLResult;

    iget v4, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-direct {v3, v4, v2, v2, v0}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Lcom/facebook/gamingservices/FriendFinderDialog;

    invoke-direct {v3, v0}, Lcom/facebook/gamingservices/FriendFinderDialog;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/intlgame/friend/FacebookFriend;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v4, Lcom/intlgame/friend/FacebookFriend$6;

    invoke-direct {v4, p0, p1}, Lcom/intlgame/friend/FacebookFriend$6;-><init>(Lcom/intlgame/friend/FacebookFriend;Lcom/intlgame/api/INTLBaseParams;)V

    invoke-virtual {v3, v0, v4}, Lcom/facebook/gamingservices/FriendFinderDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/intlgame/friend/FacebookFriend;->addFBFriendCallBackToMessageQueue(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/gamingservices/FriendFinderDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open player finder error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v3, Lcom/intlgame/api/INTLResult;

    iget v4, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v5, 0x270f

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v2, v0}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendOrShareLinkOrIMG(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] with args methodID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/friend/FacebookFriend$1;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/intlgame/friend/FacebookFriend$1;-><init>(Lcom/intlgame/friend/FacebookFriend;IILjava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intlgame/friend/FacebookFriend;->createFacebookLinkOrImageContent(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;Lcom/intlgame/core/INTLInnerCallback;)V

    return-void
.end method

.method private setShareHashTag(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "hashtag"

    const-string v1, "["

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] hashtag is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] set share hashtag error for json exception, message : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setShareTaggablePeople(Lcom/facebook/share/model/ShareContent$Builder;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
    .locals 4

    const-string v0, "friends"

    const-string v1, "["

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/facebook/share/model/ShareContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] friends is null, not set taggable people"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] set share taggable people error for json exception, message : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private shareImgOrVideoForGaming(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 7

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    iget v4, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iget-object v5, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->title_:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] shareImgOrVideo baseParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reqInfo = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget p1, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v0, 0x2712

    const/4 v6, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected req type : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->media_path_:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0xc9

    if-nez p1, :cond_1

    const-string p1, "shareImgOrVideoForGaming error : activity is null"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/4 v1, -0x1

    invoke-direct {p2, v4, v1, v1, p1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v0, p2, v3}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->media_path_:Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/facebook/gamingservices/GamingVideoUploader;

    invoke-direct {p2, p1}, Lcom/facebook/gamingservices/GamingVideoUploader;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Lcom/intlgame/friend/VideoUploadCallback;

    invoke-direct {v1, v4, v3}, Lcom/intlgame/friend/VideoUploadCallback;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v5, p1, v6, v1}, Lcom/facebook/gamingservices/GamingVideoUploader;->uploadToMediaLibrary(Ljava/lang/String;Landroid/net/Uri;ZLcom/facebook/GraphRequest$OnProgressCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/16 p2, 0x8

    const-string v1, "GamingVideoUploader upload video, file not found"

    invoke-direct {p1, v4, p2, p2, v1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v0, p1, v3}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    new-instance p1, Lcom/intlgame/friend/FacebookFriend$5;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/friend/FacebookFriend$5;-><init>(Lcom/intlgame/friend/FacebookFriend;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V

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
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] queryFriends is backend interface, it should not execute here"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/friend/INTLFriendResult;

    invoke-direct {p2}, Lcom/intlgame/api/friend/INTLFriendResult;-><init>()V

    const/4 p3, 0x7

    iput p3, p2, Lcom/intlgame/api/friend/INTLFriendResult;->ret_code_:I

    iget p3, p2, Lcom/intlgame/api/friend/INTLFriendResult;->ret_code_:I

    invoke-static {p3}, Lcom/intlgame/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/intlgame/api/friend/INTLFriendResult;->ret_msg_:Ljava/lang/String;

    const/16 p3, 0xcb

    iput p3, p2, Lcom/intlgame/api/friend/INTLFriendResult;->method_id_:I

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 p3, 0xca

    invoke-static {p3, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] with args reqInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v1, 0x2711

    const/16 v2, 0xc9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2713

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] no support for facebook sendMessage type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/16 v0, 0xca

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v2, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    const-string v1, "mode"

    invoke-static {v0, v1}, Lcom/intlgame/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/intlgame/friend/FacebookFriend;->playerFinder(Lcom/intlgame/api/INTLBaseParams;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/intlgame/friend/FacebookFriend;->invite(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1, v2}, Lcom/intlgame/friend/FacebookFriend;->sendOrShareLinkOrIMG(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public share(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v2, 0x2711

    const/16 v3, 0xc9

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2712

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2714

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ,no support for facebook share type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/4 v0, 0x7

    invoke-direct {p2, v3, v0}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    const-string v1, "mode"

    invoke-static {v0, v1}, Lcom/intlgame/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/intlgame/friend/FacebookFriend;->shareImgOrVideoForGaming(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1, v3}, Lcom/intlgame/friend/FacebookFriend;->sendOrShareLinkOrIMG(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1, v3}, Lcom/intlgame/friend/FacebookFriend;->sendOrShareLinkOrIMG(ILcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
