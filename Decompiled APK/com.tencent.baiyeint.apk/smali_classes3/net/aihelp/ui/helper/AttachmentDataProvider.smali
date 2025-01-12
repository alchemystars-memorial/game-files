.class public Lnet/aihelp/ui/helper/AttachmentDataProvider;
.super Ljava/lang/Object;
.source "AttachmentDataProvider.java"


# static fields
.field public static final PICK_ATTACHMENT_REQUEST_ID:I = 0x1

.field public static final PICK_ATTACHMENT_WITHOUT_PERMISSIONS_REQUEST_ID:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentForMedia(Z)Landroid/content/Intent;
    .locals 4

    const/16 v0, 0x13

    if-nez p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-boolean v1, Lnet/aihelp/common/Const;->TOGGLE_UPLOAD_VIDEO:Z

    const-string v2, "android.intent.extra.MIME_TYPES"

    const-string v3, "image/*"

    if-eqz v1, :cond_1

    const-string v1, "image/* video/*"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_2

    const-string v1, "video/*"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_1
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_3

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    return-object p0
.end method
