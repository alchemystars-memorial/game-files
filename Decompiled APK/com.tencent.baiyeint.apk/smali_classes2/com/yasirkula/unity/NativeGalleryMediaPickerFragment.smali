.class public Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;
.super Landroid/app/Fragment;
.source "NativeGalleryMediaPickerFragment.java"


# static fields
.field private static final MEDIA_REQUEST_CODE:I = 0xf113f

.field public static final MEDIA_TYPE_ID:Ljava/lang/String; = "NGMP_MEDIA_TYPE"

.field public static final MIME_ID:Ljava/lang/String; = "NGMP_MIME"

.field public static final SAVE_PATH_ID:Ljava/lang/String; = "NGMP_SAVE_PATH"

.field public static final SELECT_MULTIPLE_ID:Ljava/lang/String; = "NGMP_MULTIPLE"

.field public static final TITLE_ID:Ljava/lang/String; = "NGMP_TITLE"

.field public static preferGetContent:Z = false

.field public static showProgressbar:Z = true

.field public static tryPreserveFilenames:Z = false

.field public static useDefaultGalleryApp:Z = false


# instance fields
.field private final mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

.field private savePathDirectory:Ljava/lang/String;

.field private savePathFilename:Ljava/lang/String;

.field private selectMultiple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeGalleryMediaReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mediaReceiver"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const v0, 0xf113f

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-nez v0, :cond_1

    const-string p2, "Unity"

    const-string p3, "NativeGalleryMediaPickerFragment.mediaReceiver became null!"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    iget-boolean v6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    iget-object v7, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathDirectory:Ljava/lang/String;

    iget-object v8, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathFilename:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;-><init>(Landroid/content/Context;Lcom/yasirkula/unity/NativeGalleryMediaReceiver;Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean p3, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->showProgressbar:Z

    if-eqz p3, :cond_3

    new-instance p1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;

    invoke-direct {p1, p2}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultFragment;-><init>(Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->execute()V

    invoke-virtual {p2}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sendResultToUnity()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-boolean p2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    const-string p3, ""

    if-nez p2, :cond_5

    invoke-interface {v0, p3}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0, p3}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMultipleMediaReceived(Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    const/4 v2, 0x0

    const v3, 0xf113f

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v3, v4, v2}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "NGMP_MEDIA_TYPE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "NGMP_MIME"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "NGMP_TITLE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "NGMP_MULTIPLE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "NGMP_SAVE_PATH"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ltz v8, :cond_1

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v7

    :goto_0
    iput-object v9, v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathFilename:Ljava/lang/String;

    if-lez v8, :cond_2

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->savePathDirectory:Ljava/lang/String;

    and-int/lit8 v7, v1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    and-int/lit8 v10, v1, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    add-int/lit8 v9, v9, 0x1

    :cond_4
    and-int/lit8 v12, v1, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    add-int/lit8 v9, v9, 0x1

    :cond_5
    sget-boolean v14, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->preferGetContent:Z

    if-nez v14, :cond_8

    iget-boolean v14, v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-nez v14, :cond_8

    if-ne v9, v8, :cond_8

    if-eq v1, v13, :cond_8

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.PICK"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ne v1, v8, :cond_6

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    if-ne v1, v11, :cond_7

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    move-object v14, v2

    :goto_3
    if-nez v14, :cond_10

    new-instance v14, Landroid/content/Intent;

    const/16 v1, 0x13

    if-le v9, v8, :cond_9

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v1, :cond_9

    const-string v15, "android.intent.action.OPEN_DOCUMENT"

    goto :goto_4

    :cond_9
    const-string v15, "android.intent.action.GET_CONTENT"

    :goto_4
    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "android.intent.category.OPENABLE"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v15, v0, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->selectMultiple:Z

    if-eqz v15, :cond_a

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v15, v2, :cond_a

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v14, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    if-le v9, v8, :cond_f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_e

    new-array v1, v9, [Ljava/lang/String;

    if-ne v7, v8, :cond_b

    const-string v2, "image/*"

    aput-object v2, v1, v4

    move v2, v8

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    if-ne v10, v11, :cond_c

    add-int/lit8 v5, v2, 0x1

    const-string v7, "video/*"

    aput-object v7, v1, v2

    move v2, v5

    :cond_c
    if-ne v12, v13, :cond_d

    const-string v5, "audio/*"

    aput-object v5, v1, v2

    :cond_d
    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const-string v5, "*/*"

    :cond_f
    invoke-virtual {v14, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v14, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    :try_start_0
    sget-boolean v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->useDefaultGalleryApp:Z

    if-nez v1, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_12

    invoke-static {}, Lcom/yasirkula/unity/NativeGalleryUtils;->IsXiaomiOrMIUI()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    invoke-static {v14, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    :cond_13
    :goto_6
    invoke-virtual {v0, v14, v3}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "No apps can perform this action."

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_7
    return-void
.end method
