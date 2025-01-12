.class public Lcom/intlgame/friend/TweetComposer$Builder;
.super Ljava/lang/Object;
.source "TweetComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/friend/TweetComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final TYPE_SEND:I = 0x1

.field public static final TYPE_SHARE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private imageUri:Landroid/net/Uri;

.field private text:Ljava/lang/String;

.field private type:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/intlgame/friend/TweetComposer$Builder;->type:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->context:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createIntent(I)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intlgame/friend/TweetComposer$Builder;->createTwitterIntent(I)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/friend/TweetComposer$Builder;->createWebIntent()Landroid/content/Intent;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method createTwitterIntent(I)Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intlgame/friend/TweetComposer$Builder;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/intlgame/friend/TweetComposer$Builder;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/intlgame/friend/TweetComposer$Builder;->url:Ljava/net/URL;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lcom/intlgame/friend/TweetComposer$Builder;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.twitter.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.twitter.composer.ComposerActivity"

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    const-string v4, "com.twitter.app.dm.DMActivity"

    :cond_6
    :goto_0
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method createWebIntent()Landroid/content/Intent;
    .locals 6

    const-string v0, "UTF-8"

    :try_start_0
    iget-object v1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/intlgame/friend/TweetComposer$Builder;->url:Ljava/net/URL;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "https://twitter.com/intent/tweet?text=%s&url=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public image(Landroid/net/Uri;)Lcom/intlgame/friend/TweetComposer$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/intlgame/friend/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->imageUri:Landroid/net/Uri;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "imageUri already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "imageUri must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/intlgame/friend/TweetComposer$Builder;->type:I

    invoke-virtual {p0, v0}, Lcom/intlgame/friend/TweetComposer$Builder;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public text(Ljava/lang/String;)Lcom/intlgame/friend/TweetComposer$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/intlgame/friend/TweetComposer$Builder;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->text:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "text already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "text must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public type(I)Lcom/intlgame/friend/TweetComposer$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->type:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->type:I

    :goto_0
    return-object p0
.end method

.method public url(Ljava/net/URL;)Lcom/intlgame/friend/TweetComposer$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/intlgame/friend/TweetComposer$Builder;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/intlgame/friend/TweetComposer$Builder;->url:Ljava/net/URL;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
