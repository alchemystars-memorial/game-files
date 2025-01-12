.class public Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;
.super Landroid/os/AsyncTask;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/utils/MediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadVideoImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;


# direct methods
.method public constructor <init>(Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->listener:Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/File;
    .locals 5

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/aihelp/utils/MediaUtils;->getOutputMediaFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->doInBackground([Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->listener:Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;->onLoadImage(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnet/aihelp/utils/MediaUtils$LoadVideoImageTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
