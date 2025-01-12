.class public Lnet/aihelp/ui/helper/AttachmentPicker;
.super Ljava/lang/Object;
.source "AttachmentPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/helper/AttachmentPicker$LazyHolder;,
        Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_FILE_NOT_FOUND:I = -0x1

.field public static final ATTACHMENT_FILE_SIZE_LIMIT_EXCEEDED:I = -0x3

.field public static final INVALID_URI:I = -0x5

.field private static final MAX_ATTACHMENT_FILE_SIZE_LIMIT:J = 0x1900000L

.field public static final NO_APPS_TO_OPEN_ATTACHMENTS_INTENT:I = -0x4

.field public static final UNSUPPORTED_ATTACHMENT_TYPE:I = -0x2


# instance fields
.field private attachmentPickerListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/aihelp/ui/cs/ConversationFragment;",
            ">;"
        }
    .end annotation
.end field

.field private extraData:Landroid/os/Bundle;

.field private pickType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;
    .locals 1

    sget-object v0, Lnet/aihelp/ui/helper/AttachmentPicker$LazyHolder;->INSTANCE:Lnet/aihelp/ui/helper/AttachmentPicker;

    return-object v0
.end method

.method private processUriForAttachment(Landroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/aihelp/utils/FileUtil;->doesFileFromUriExistAndCanRead(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lnet/aihelp/ui/helper/AttachmentHelper;->createPickFileFromUri(Landroid/net/Uri;)Lnet/aihelp/ui/helper/AttachmentPickerFile;

    move-result-object p1

    iget-object v0, p1, Lnet/aihelp/ui/helper/AttachmentPickerFile;->originalFileSize:Ljava/lang/Long;

    sget v1, Lnet/aihelp/common/Const;->LIMIT_UPLOADING_VIDEO:I

    int-to-long v1, v1

    const-wide/32 v3, 0x1900000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget v3, p1, Lnet/aihelp/ui/helper/AttachmentPickerFile;->attachmentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    :cond_0
    iget v3, p1, Lnet/aihelp/ui/helper/AttachmentPickerFile;->attachmentType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 p1, -0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/helper/AttachmentPicker;->sendPickFailure(ILjava/lang/Long;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/helper/AttachmentPicker;->extraData:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/helper/AttachmentPicker;->sendPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/helper/AttachmentPicker;->sendPickFailure(ILjava/lang/Long;)V

    goto :goto_0

    :cond_4
    const/4 p1, -0x5

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/helper/AttachmentPicker;->sendPickFailure(ILjava/lang/Long;)V

    :goto_0
    return-void
.end method

.method private sendPickFailure(ILjava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/helper/AttachmentPicker;->attachmentPickerListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;->onPickFailure(ILjava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private sendPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/helper/AttachmentPicker;->attachmentPickerListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;->onPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/ui/helper/AttachmentPicker;->attachmentPickerListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x4

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/helper/AttachmentPicker;->sendPickFailure(ILjava/lang/Long;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public launchImagePicker(Z)V
    .locals 1

    invoke-static {p1}, Lnet/aihelp/ui/helper/AttachmentDataProvider;->getIntentForMedia(Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-direct {p0, v0, p1}, Lnet/aihelp/ui/helper/AttachmentPicker;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAttachmentPickRequestResult(ILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-direct {p0, p2}, Lnet/aihelp/ui/helper/AttachmentPicker;->processUriForAttachment(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lnet/aihelp/ui/helper/AttachmentPicker;->processUriForAttachment(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setPickerHost(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/ui/helper/AttachmentPicker;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/aihelp/ui/helper/AttachmentPicker;->attachmentPickerListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
