.class public Lcom/intlgame/friend/TweetComposer;
.super Ljava/lang/Object;
.source "TweetComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/friend/TweetComposer$Builder;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_PLAIN_TEXT:Ljava/lang/String; = "text/*"

.field private static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"

.field private static final TWITTER_SEND_ACTIVITY:Ljava/lang/String; = "com.twitter.app.dm.DMActivity"

.field private static final TWITTER_SHARE_ACTIVITY:Ljava/lang/String; = "com.twitter.composer.ComposerActivity"

.field private static final WEB_INTENT:Ljava/lang/String; = "https://twitter.com/intent/tweet?text=%s&url=%s"

.field static volatile instance:Lcom/intlgame/friend/TweetComposer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/intlgame/friend/TweetComposer;
    .locals 2

    sget-object v0, Lcom/intlgame/friend/TweetComposer;->instance:Lcom/intlgame/friend/TweetComposer;

    if-nez v0, :cond_1

    const-class v0, Lcom/intlgame/friend/TweetComposer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/intlgame/friend/TweetComposer;->instance:Lcom/intlgame/friend/TweetComposer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/intlgame/friend/TweetComposer;

    invoke-direct {v1}, Lcom/intlgame/friend/TweetComposer;-><init>()V

    sput-object v1, Lcom/intlgame/friend/TweetComposer;->instance:Lcom/intlgame/friend/TweetComposer;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/intlgame/friend/TweetComposer;->instance:Lcom/intlgame/friend/TweetComposer;

    return-object v0
.end method
