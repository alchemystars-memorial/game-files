.class public Lnet/aihelp/data/model/cs/ConversationMsg;
.super Ljava/lang/Object;
.source "ConversationMsg.java"


# static fields
.field public static final STATUS_FAILURE:I = 0x3ec

.field public static final STATUS_FAQ_HELPFUL:I = 0xc8

.field public static final STATUS_FAQ_NORMAL:I = 0x64

.field public static final STATUS_FAQ_UNHELPFUL:I = 0x12c

.field public static final STATUS_FAQ_UNHELPFUL_FEEDBACK_GIVEN:I = 0x190

.field public static final STATUS_RETRY:I = 0x3ea

.field public static final STATUS_SENDING:I = 0x3e9

.field public static final STATUS_SUCCESS:I = 0x3eb

.field public static final TYPE_ADMIN_FAQ:I = 0x5

.field public static final TYPE_ADMIN_IMAGE:I = 0x8

.field public static final TYPE_ADMIN_RICHTEXT:I = 0xa

.field public static final TYPE_ADMIN_TEXT:I = 0x1

.field public static final TYPE_ADMIN_VIDEO:I = 0x9

.field public static final TYPE_TIMESTAMP:I = 0x4

.field public static final TYPE_USER_IMAGE:I = 0x6

.field public static final TYPE_USER_TEXT:I = 0x2

.field public static final TYPE_USER_TEXT_BOT:I = 0x3

.field public static final TYPE_USER_VIDEO:I = 0x7


# instance fields
.field private faqTicketId:Ljava/lang/String;

.field private imageSize:[I

.field private isMessageFromServer:Z

.field private msgContent:Ljava/lang/String;

.field private msgStatus:I

.field private msgType:I

.field private nickname:Ljava/lang/String;

.field private timeStamp:J

.field private videoThumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    iput p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    iput p2, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgStatus:I

    return-void
.end method


# virtual methods
.method public getFaqTicketId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->faqTicketId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()[I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->imageSize:[I

    return-object v0
.end method

.method public getMsgContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgStatus()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgStatus:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->timeStamp:J

    return-wide v0
.end method

.method public getVideoThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->videoThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isMessageFromServer()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->isMessageFromServer:Z

    return v0
.end method

.method public prepareVideoThumbnail()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^(/.+)+\\.(mp4|MP4)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/aihelp/utils/MediaUtils;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/cs/ConversationMsg;->setVideoThumbnail(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareVideoThumbnail failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setFaqTicketId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->faqTicketId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setImageSize([I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->imageSize:[I

    return-void
.end method

.method public setMessageFromServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->isMessageFromServer:Z

    return-void
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgContent:Ljava/lang/String;

    return-void
.end method

.method public setMsgStatus(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgStatus:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->timeStamp:J

    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->videoThumbnail:Ljava/lang/String;

    invoke-static {p1}, Lnet/aihelp/ui/helper/BitmapHelper;->computeSize(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setImageSize([I)V

    return-void
.end method
