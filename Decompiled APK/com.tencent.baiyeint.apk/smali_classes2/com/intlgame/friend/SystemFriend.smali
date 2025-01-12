.class public Lcom/intlgame/friend/SystemFriend;
.super Ljava/lang/Object;
.source "SystemFriend.java"

# interfaces
.implements Lcom/intlgame/core/friend/FriendInterface;


# static fields
.field public static final INTL_SYSTEM_CHANNEL:Ljava/lang/String; = "System"

.field public static final INTL_SYSTEM_PLUGIN:Ljava/lang/String; = "INTLSystem"


# instance fields
.field private final IMAGE_COMPRESSION_QUALITY:I

.field private final SYSTEM_PROVIDER_AUTH:Ljava/lang/String;

.field private final SYSTEM_SHARE_DIRECTORY:Ljava/lang/String;

.field private final SYSTEM_SHARE_FILE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "system_share"

    iput-object v0, p0, Lcom/intlgame/friend/SystemFriend;->SYSTEM_SHARE_DIRECTORY:Ljava/lang/String;

    const-string v0, "image"

    iput-object v0, p0, Lcom/intlgame/friend/SystemFriend;->SYSTEM_SHARE_FILE:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/intlgame/friend/SystemFriend;->IMAGE_COMPRESSION_QUALITY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".system.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/friend/SystemFriend;->SYSTEM_PROVIDER_AUTH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] SystemFriend init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, "INTLSystem"

    const-string v1, "1.17.00.301"

    const-string v2, "System"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3, p1}, Lcom/intlgame/tools/IT;->reportPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/friend/SystemFriend;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/friend/SystemFriend;->getFileUri(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/friend/SystemFriend;Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;IILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/intlgame/friend/SystemFriend;->openShareSheet(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;IILjava/lang/String;)V

    return-void
.end method

.method private addLinkToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->link_:Ljava/lang/String;

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/intlgame/friend/SystemShareData;->setLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] reqInfo.link_ is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addTextToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->description_:Ljava/lang/String;

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/intlgame/friend/SystemShareData;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] reqInfo.description_ is empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getComponentName(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;",
            "Lcom/intlgame/friend/SystemShareData;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/ResolveInfo;

    iget-object v0, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getComponentName   name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p5, p4}, Lcom/intlgame/friend/SystemFriend;->getTargetIntent(Landroid/content/pm/ResolveInfo;Lcom/intlgame/friend/SystemShareData;)Landroid/content/Intent;

    iget-object p5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3, p5, v1}, Lcom/intlgame/friend/SystemFriend;->checkExist(Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getComponentName  exist  name"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    new-instance p5, Landroid/content/ComponentName;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p5, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    const-string p1, "system share get match info is null obj "

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
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

    const-string v2, "system_share"

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

    iget-object p2, p0, Lcom/intlgame/friend/SystemFriend;->SYSTEM_PROVIDER_AUTH:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/intlgame/friend/SystemFriend;->SYSTEM_PROVIDER_AUTH:Ljava/lang/String;

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

.method private getInitialIntent(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;",
            "Lcom/intlgame/friend/SystemShareData;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/ResolveInfo;

    iget-object v0, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p5, p4}, Lcom/intlgame/friend/SystemFriend;->getTargetIntent(Landroid/content/pm/ResolveInfo;Lcom/intlgame/friend/SystemShareData;)Landroid/content/Intent;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialIntent all intent name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    iget v1, p3, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->rule_:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3, v1, v3}, Lcom/intlgame/friend/SystemFriend;->checkExist(Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialIntent exist intent name"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p5, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v1, p3, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->rule_:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3, v1, v3}, Lcom/intlgame/friend/SystemFriend;->checkExist(Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialIntent not exist intent name"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p5, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    const-string p1, "system share get match info is null obj "

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getTargetIntent(Landroid/content/pm/ResolveInfo;Lcom/intlgame/friend/SystemShareData;)Landroid/content/Intent;
    .locals 2

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/intlgame/friend/SystemShareData;->getShareType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/intlgame/friend/SystemShareData;->getTexts()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/intlgame/friend/SystemShareData;->getImage()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/intlgame/friend/SystemShareData;->getImage()Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method private openShareSheet(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;IILjava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Lcom/intlgame/friend/SystemShareData;->isEmpty()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] : no data to share"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/16 p2, 0xb

    const/16 p3, 0xc9

    invoke-direct {p1, p3, p2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    invoke-static {p3, p1, p5}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/intlgame/friend/SystemShareData;->getShareType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/intlgame/friend/SystemShareData;->getTexts()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/intlgame/friend/SystemShareData;->getImage()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/intlgame/friend/SystemShareData;->getImage()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1}, Lcom/intlgame/friend/SystemShareData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v0, 0x10000

    invoke-virtual {v2, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    iget v0, p2, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->rule_:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/intlgame/friend/SystemFriend;->setInitIntents(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget v0, p2, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->rule_:I

    if-ne v0, v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/friend/SystemFriend;->getComponentName(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    new-array p2, v7, [Landroid/os/Parcelable;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string p2, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/intlgame/friend/SystemFriend;->setInitIntents(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    :cond_4
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x16

    if-lt p1, p2, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/intlgame/SystemShareBroadcast;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_5

    const/high16 p2, 0xa000000

    goto :goto_1

    :cond_5
    const/high16 p2, 0x8000000

    :goto_1
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    const-string p2, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    invoke-direct {p1, p4, v7}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    invoke-static {p3, p1, p5}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method

.method private setInitIntents(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;",
            "Lcom/intlgame/friend/SystemShareData;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/intlgame/friend/SystemFriend;->getInitialIntent(Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/friend/SystemShareData;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/intlgame/friend/SystemShareData;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p6

    new-array p2, p2, [Landroid/os/Parcelable;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string p2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object p6
.end method

.method private shareWithImage(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/api/friend/INTLFriendReqInfo;IILjava/lang/String;)V
    .locals 9

    iget-object p3, p3, Lcom/intlgame/api/friend/INTLFriendReqInfo;->image_path_:Ljava/lang/String;

    invoke-static {p3}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] reqInfo.image_path_ is empty"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/friend/SystemFriend;->openShareSheet(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;IILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v8, Lcom/intlgame/friend/SystemFriend$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/intlgame/friend/SystemFriend$1;-><init>(Lcom/intlgame/friend/SystemFriend;Ljava/lang/String;Ljava/lang/String;Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;II)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    invoke-static {v8, p1}, Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkExist(Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p1, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->match_:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p1, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->match_:Ljava/util/List;

    :cond_0
    iget-object v0, p1, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->contains_:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p1, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->contains_:Ljava/util/List;

    :cond_1
    iget-object v0, p1, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->contains_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move p2, v2

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    iget-object p1, p1, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;->match_:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :cond_5
    :goto_1
    return v2
.end method

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

    const-string p3, "], no support for sendMessage"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p2, Lcom/intlgame/api/INTLResult;

    const/16 p3, 0xcb

    const/4 p4, 0x7

    invoke-direct {p2, p3, p4}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 p3, 0xca

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

    const-string v0, "], no support for sendMessage"

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
    .locals 8

    iget-object v6, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    iget v5, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] with args reqInfo : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/intlgame/api/friend/INTLFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0xc9

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] activity is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/api/INTLResult;

    const/4 p2, -0x1

    const-string v0, "Activity is null"

    invoke-direct {p1, v5, p2, p2, v0}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    invoke-static {v2, p1, v6}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Lcom/intlgame/friend/SystemShareData;

    invoke-direct {v3}, Lcom/intlgame/friend/SystemShareData;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->extra_json_:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;

    invoke-direct {v7, v4}, Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v0

    :goto_0
    iget v0, p2, Lcom/intlgame/api/friend/INTLFriendReqInfo;->type_:I

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

    invoke-direct {p2, v5, v0}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v2, p2, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v3, p2, v6}, Lcom/intlgame/friend/SystemFriend;->addTextToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    invoke-direct {p0, v3, p2, v6}, Lcom/intlgame/friend/SystemFriend;->addLinkToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    const/16 v4, 0xc9

    move-object v0, p0

    move-object v1, v3

    move-object v2, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/intlgame/friend/SystemFriend;->shareWithImage(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;Lcom/intlgame/api/friend/INTLFriendReqInfo;IILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v3, p2, v6}, Lcom/intlgame/friend/SystemFriend;->addTextToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    invoke-direct {p0, v3, p2, v6}, Lcom/intlgame/friend/SystemFriend;->addLinkToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    const/16 p1, 0xc9

    move-object v0, p0

    move-object v1, v3

    move-object v2, v7

    move v3, p1

    move v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/friend/SystemFriend;->openShareSheet(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;IILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v3, p2, v6}, Lcom/intlgame/friend/SystemFriend;->addTextToShare(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLFriendReqInfo;Ljava/lang/String;)V

    const/16 p1, 0xc9

    move-object v0, p0

    move-object v1, v3

    move-object v2, v7

    move v3, p1

    move v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/friend/SystemFriend;->openShareSheet(Lcom/intlgame/friend/SystemShareData;Lcom/intlgame/api/friend/INTLSysFriendCustomPadInfo;IILjava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
