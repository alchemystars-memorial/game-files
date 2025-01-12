.class public Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;
.super Ljava/lang/Object;
.source "NativeGalleryMediaPickerResultOperation.java"


# instance fields
.field private cancelled:Z

.field private final context:Landroid/content/Context;

.field private final data:Landroid/content/Intent;

.field public finished:Z

.field private final mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

.field public progress:I

.field private final savePathDirectory:Ljava/lang/String;

.field private final savePathFilename:Ljava/lang/String;

.field private savedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectMultiple:Z

.field public sentResult:Z

.field private unityResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yasirkula/unity/NativeGalleryMediaReceiver;Landroid/content/Intent;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "mediaReceiver",
            "data",
            "selectMultiple",
            "savePathDirectory",
            "savePathFilename"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    iput-object p3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    iput-object p5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathDirectory:Ljava/lang/String;

    iput-object p6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathFilename:Ljava/lang/String;

    return-void
.end method

.method private copyToTempFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Exception:"

    const-string v10, "Unity"

    iget-object v0, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    move-object v2, v11

    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v2

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v3, v12

    goto :goto_2

    :cond_0
    move-object v3, v12

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v2, v12

    move-object v3, v2

    :goto_2
    :try_start_3
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    :cond_2
    const-string v3, "temp"

    :cond_3
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v12

    :goto_4
    if-nez v0, :cond_6

    const-string v0, ".tmp"

    :cond_6
    sget-boolean v4, Lcom/yasirkula/unity/NativeGalleryMediaPickerFragment;->tryPreserveFilenames:Z

    const/4 v5, 0x0

    if-nez v4, :cond_7

    iget-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathFilename:Ljava/lang/String;

    goto :goto_5

    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_5
    :try_start_4
    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v4, :cond_9

    return-object v12

    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v8, v13, v6

    if-gez v8, :cond_a

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    int-to-long v13, v8

    :catch_3
    cmp-long v8, v13, v6

    if-gez v8, :cond_a

    move-wide v13, v6

    :cond_a
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    if-eqz v11, :cond_c

    move/from16 v16, v2

    move v11, v5

    :goto_6
    iget-object v15, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v11, v15, :cond_c

    iget-object v15, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    add-int/lit8 v8, v16, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v16, v8

    move-object v8, v11

    const/4 v11, -0x1

    :cond_b
    add-int/2addr v11, v2

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savePathDirectory:Ljava/lang/String;

    invoke-direct {v0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    cmp-long v3, v13, v6

    if-lez v3, :cond_d

    move v15, v5

    goto :goto_7

    :cond_d
    const/4 v15, -0x1

    :goto_7
    :try_start_8
    iput v15, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    const/16 v11, 0x1000

    new-array v11, v11, [B

    :goto_8
    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_11

    iget-boolean v12, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    if-eqz v12, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v2, v11, v5, v15}, Ljava/io/OutputStream;->write([BII)V

    if-lez v3, :cond_10

    move-object/from16 v17, v11

    int-to-long v11, v15

    add-long/2addr v6, v11

    long-to-double v11, v6

    move-wide/from16 v18, v6

    long-to-double v5, v13

    div-double/2addr v11, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v5

    double-to-int v5, v11

    iput v5, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_f

    iput v6, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    :cond_f
    move-object/from16 v11, v17

    move-wide/from16 v6, v18

    const/4 v5, 0x0

    :cond_10
    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    :goto_9
    iget-boolean v5, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    if-eqz v5, :cond_12

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    if-lez v3, :cond_13

    const/16 v3, 0x64

    :try_start_a
    iput v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    :cond_13
    :goto_a
    iget-boolean v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    if-nez v3, :cond_14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    :cond_14
    iget-object v3, v1, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->savedFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_16

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_16
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :goto_c
    if-eqz v12, :cond_18

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v0
.end method

.method private getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected media uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yasirkula/unity/NativeGalleryUtils;->GetPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    throw p1

    :catch_3
    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_2
    invoke-direct {p0, p1}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->copyToTempFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unity"

    const-string v1, "Cancelled NativeGalleryMediaPickerResultOperation!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public execute()V
    .locals 9

    const-string v0, ""

    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    :try_start_0
    iget-boolean v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_6

    iget-boolean v6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->cancelled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    return-void

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    move v5, v3

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->data:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->getPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iput-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Unity"

    const-string v4, "Exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_3
    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    return-void

    :goto_4
    iput v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->progress:I

    iput-boolean v2, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->finished:Z

    throw v0
.end method

.method public sendResultToUnity()V
    .locals 2

    iget-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sentResult:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->sentResult:Z

    iget-object v0, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->mediaReceiver:Lcom/yasirkula/unity/NativeGalleryMediaReceiver;

    if-nez v0, :cond_1

    const-string v0, "Unity"

    const-string v1, "NativeGalleryMediaPickerResultOperation.mediaReceiver became null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->selectMultiple:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMultipleMediaReceived(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/yasirkula/unity/NativeGalleryMediaPickerResultOperation;->unityResult:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yasirkula/unity/NativeGalleryMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
