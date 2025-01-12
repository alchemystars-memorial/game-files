.class public Lnet/aihelp/core/util/luban/Luban;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/luban/Luban$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "aihelp_cache"

.field private static final MSG_COMPRESS_ERROR:I = 0x2

.field private static final MSG_COMPRESS_START:I = 0x1

.field private static final MSG_COMPRESS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Luban"


# instance fields
.field private focusAlpha:Z

.field private mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

.field private mCompressionPredicate:Lnet/aihelp/core/util/luban/CompressionPredicate;

.field private mHandler:Landroid/os/Handler;

.field private mLeastCompressSize:I

.field private mRenameListener:Lnet/aihelp/core/util/luban/OnRenameListener;

.field private mStreamProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/luban/InputStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDir:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/util/luban/Luban$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$000(Lnet/aihelp/core/util/luban/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$100(Lnet/aihelp/core/util/luban/Luban$Builder;)Lnet/aihelp/core/util/luban/OnRenameListener;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mRenameListener:Lnet/aihelp/core/util/luban/OnRenameListener;

    invoke-static {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$200(Lnet/aihelp/core/util/luban/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mStreamProviders:Ljava/util/List;

    invoke-static {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$300(Lnet/aihelp/core/util/luban/Luban$Builder;)Lnet/aihelp/core/util/luban/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    invoke-static {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$400(Lnet/aihelp/core/util/luban/Luban$Builder;)I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/util/luban/Luban;->mLeastCompressSize:I

    invoke-static {p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->access$500(Lnet/aihelp/core/util/luban/Luban$Builder;)Lnet/aihelp/core/util/luban/CompressionPredicate;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressionPredicate:Lnet/aihelp/core/util/luban/CompressionPredicate;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/util/luban/Luban$Builder;Lnet/aihelp/core/util/luban/Luban$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/luban/Luban;-><init>(Lnet/aihelp/core/util/luban/Luban$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lnet/aihelp/core/util/luban/Luban;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/luban/Luban;->launch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lnet/aihelp/core/util/luban/Luban;Lnet/aihelp/core/util/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/luban/Luban;->get(Lnet/aihelp/core/util/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lnet/aihelp/core/util/luban/Luban;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/luban/Luban;->get(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/core/util/luban/Luban;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lnet/aihelp/core/util/luban/Luban;Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/luban/Luban;->compress(Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private compress(Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/luban/Luban;->compressReal(Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->close()V

    throw p1
.end method

.method private compressReal(Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/util/luban/Checker;->SINGLE:Lnet/aihelp/core/util/luban/Checker;

    invoke-virtual {v0, p2}, Lnet/aihelp/core/util/luban/Checker;->extSuffix(Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/util/luban/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/luban/Luban;->mRenameListener:Lnet/aihelp/core/util/luban/OnRenameListener;

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/aihelp/core/util/luban/OnRenameListener;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/util/luban/Luban;->getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressionPredicate:Lnet/aihelp/core/util/luban/CompressionPredicate;

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/aihelp/core/util/luban/CompressionPredicate;->apply(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lnet/aihelp/core/util/luban/Checker;->SINGLE:Lnet/aihelp/core/util/luban/Checker;

    iget v1, p0, Lnet/aihelp/core/util/luban/Luban;->mLeastCompressSize:I

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/util/luban/Checker;->needCompress(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/aihelp/core/util/luban/Engine;

    iget-boolean v1, p0, Lnet/aihelp/core/util/luban/Luban;->focusAlpha:Z

    invoke-direct {p1, p2, v0, v1}, Lnet/aihelp/core/util/luban/Engine;-><init>(Lnet/aihelp/core/util/luban/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {p1}, Lnet/aihelp/core/util/luban/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/aihelp/core/util/luban/Checker;->SINGLE:Lnet/aihelp/core/util/luban/Checker;

    iget v1, p0, Lnet/aihelp/core/util/luban/Luban;->mLeastCompressSize:I

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/util/luban/Checker;->needCompress(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lnet/aihelp/core/util/luban/Engine;

    iget-boolean v1, p0, Lnet/aihelp/core/util/luban/Luban;->focusAlpha:Z

    invoke-direct {p1, p2, v0, v1}, Lnet/aihelp/core/util/luban/Engine;-><init>(Lnet/aihelp/core/util/luban/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {p1}, Lnet/aihelp/core/util/luban/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lnet/aihelp/core/util/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private get(Lnet/aihelp/core/util/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnet/aihelp/core/util/luban/Engine;

    sget-object v1, Lnet/aihelp/core/util/luban/Checker;->SINGLE:Lnet/aihelp/core/util/luban/Checker;

    invoke-virtual {v1, p1}, Lnet/aihelp/core/util/luban/Checker;->extSuffix(Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lnet/aihelp/core/util/luban/Luban;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-boolean v1, p0, Lnet/aihelp/core/util/luban/Luban;->focusAlpha:Z

    invoke-direct {v0, p1, p2, v1}, Lnet/aihelp/core/util/luban/Engine;-><init>(Lnet/aihelp/core/util/luban/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {v0}, Lnet/aihelp/core/util/luban/Engine;->compress()Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lnet/aihelp/core/util/luban/InputStreamProvider;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lnet/aihelp/core/util/luban/InputStreamProvider;->close()V

    throw p2
.end method

.method private get(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/util/luban/Luban;->mStreamProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/util/luban/InputStreamProvider;

    invoke-direct {p0, p1, v2}, Lnet/aihelp/core/util/luban/Luban;->compress(Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getImageCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "aihelp_cache"

    invoke-static {p1, v0}, Lnet/aihelp/core/util/luban/Luban;->getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private static getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0

    :cond_2
    const/4 p1, 0x6

    const-string v0, "Luban"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "default disk cache dir is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/luban/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ".jpg"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/luban/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private launch(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mStreamProviders:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "image file cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/luban/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mStreamProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/util/luban/InputStreamProvider;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lnet/aihelp/core/util/luban/Luban$1;

    invoke-direct {v3, p0, p1, v1}, Lnet/aihelp/core/util/luban/Luban$1;-><init>(Lnet/aihelp/core/util/luban/Luban;Landroid/content/Context;Lnet/aihelp/core/util/luban/InputStreamProvider;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static with(Landroid/content/Context;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/luban/Luban$Builder;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/luban/Luban$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lnet/aihelp/core/util/luban/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    invoke-interface {p1}, Lnet/aihelp/core/util/luban/OnCompressListener;->onStart()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-interface {v0, p1}, Lnet/aihelp/core/util/luban/OnCompressListener;->onSuccess(Ljava/io/File;)V

    :goto_0
    return v1
.end method
