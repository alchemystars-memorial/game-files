.class public Lcom/intlgame/friend/TwitterFriend;
.super Ljava/lang/Object;
.source "TwitterFriend.java"

# interfaces
.implements Lcom/intlgame/core/friend/FriendInterface;


# instance fields
.field private final IMAGE_COMPRESSION_QUALITY:I

.field private final TWITTER_PACKAGE:Ljava/lang/String;

.field private final TWITTER_PROVIDER_AUTH:Ljava/lang/String;

.field private final TWITTER_SHARE_DIRECTORY:Ljava/lang/String;

.field private final TWITTER_SHARE_FILE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.twitter.android"

    iput-object v0, p0, Lcom/intlgame/friend/TwitterFriend;->TWITTER_PACKAGE:Ljava/lang/String;

    const-string v0, "twitter_share"

    iput-object v0, p0, Lcom/intlgame/friend/TwitterFriend;->TWITTER_SHARE_DIRECTORY:Ljava/lang/String;

    const-string v0, "image"

    iput-object v0, p0, Lcom/intlgame/friend/TwitterFriend;->TWITTER_SHARE_FILE:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/intlgame/friend/TwitterFriend;->IMAGE_COMPRESSION_QUALITY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".twitter.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/friend/TwitterFriend;->TWITTER_PROVIDER_AUTH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] TwitterFriend init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/common/TwitterUtil;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/friend/TwitterFriend;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/friend/TwitterFriend;->getFileUri(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/friend/TwitterFriend;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intlgame/friend/TwitterFriend;->composeTwitter(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private composeTwitter(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/intlgame/friend/TweetComposer$Builder;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intlgame/friend/TweetComposer$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intlgame/friend/TweetComposer$Builder;->type(I)Lcom/intlgame/friend/TweetComposer$Builder;

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/intlgame/friend/TweetComposer$Builder;->text(Ljava/lang/String;)Lcom/intlgame/friend/TweetComposer$Builder;

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/intlgame/friend/TweetComposer$Builder;->url(Ljava/net/URL;)Lcom/intlgame/friend/TweetComposer$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v3

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "link to url error, msg = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Lcom/intlgame/friend/TweetComposer$Builder;->image(Landroid/net/Uri;)Lcom/intlgame/friend/TweetComposer$Builder;

    goto :goto_2

    :cond_2
    move v3, p1

    :goto_2
    const/16 p1, 0xc9

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/intlgame/friend/TweetComposer$Builder;->show()V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    invoke-direct {p2, p1, v1}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    invoke-static {p1, p2, p4}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] : no data to share"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/16 p3, 0xb

    invoke-direct {p2, p1, p3}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    invoke-static {p1, p2, p4}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private getFileUri(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x64

    const-string v2, "twitter_share"

    const-string v3, "image"

    invoke-static {v0, p1, v2, v3, v1}, Lcom/intlgame/tools/IT;->saveBitmapToLocal(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] providerAuth path : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/intlgame/friend/TwitterFriend;->TWITTER_PROVIDER_AUTH:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/intlgame/friend/TwitterFriend;->TWITTER_PROVIDER_AUTH:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] saveBitmapToFile invalid bitmap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
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

    const-string p3, "], no support for twitter queryFriends"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    iget p3, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 p4, 0x7

    invoke-direct {p2, p3, p4}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 p3, 0xc9

    invoke-static {p3, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], no support for twitter sendMessage"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    iget v0, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/4 v1, 0x7

    invoke-direct {p2, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v0, 0xc9

    invoke-static {v0, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/intlgame/api/INTLBaseParams;Lcom/intlgame/api/friend/INTLFriendReqInfo;)V
    .locals 6

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] with args reqInfo : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    const/16 v3, 0xc9

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], no support for system share type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/4 v0, 0x7

    invoke-direct {p2, v3, v0}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v3, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v4, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->description_:Ljava/lang/String;

    iget-object p1, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    iget-object v5, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->link_:Ljava/lang/String;

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, v4, v5, v0, v2}, Lcom/intlgame/friend/TwitterFriend;->composeTwitter(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "com.twitter.android"

    invoke-static {p2}, Lcom/intlgame/tools/IT;->isAppInstalledNative(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "twitter app not installed, cannot share image"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v5}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/16 p2, 0xf

    invoke-direct {p1, v3, p2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    invoke-static {v3, p1, v2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v5, v0, v2}, Lcom/intlgame/friend/TwitterFriend;->composeTwitter(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, v4, v5, p2, v2}, Lcom/intlgame/friend/TwitterFriend;->composeTwitter(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check image exception, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Lcom/intlgame/friend/TwitterFriend$1;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/friend/TwitterFriend$1;-><init>(Lcom/intlgame/friend/TwitterFriend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
