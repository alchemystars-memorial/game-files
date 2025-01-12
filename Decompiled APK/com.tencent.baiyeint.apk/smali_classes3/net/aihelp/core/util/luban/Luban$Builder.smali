.class public Lnet/aihelp/core/util/luban/Luban$Builder;
.super Ljava/lang/Object;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/luban/Luban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private focusAlpha:Z

.field private mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

.field private mCompressionPredicate:Lnet/aihelp/core/util/luban/CompressionPredicate;

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
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mLeastCompressSize:I

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/util/luban/Luban$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/util/luban/Luban$Builder;)Lnet/aihelp/core/util/luban/OnRenameListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mRenameListener:Lnet/aihelp/core/util/luban/OnRenameListener;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/util/luban/Luban$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/util/luban/Luban$Builder;)Lnet/aihelp/core/util/luban/OnCompressListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/core/util/luban/Luban$Builder;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mLeastCompressSize:I

    return p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/util/luban/Luban$Builder;)Lnet/aihelp/core/util/luban/CompressionPredicate;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mCompressionPredicate:Lnet/aihelp/core/util/luban/CompressionPredicate;

    return-object p0
.end method

.method static synthetic access$900(Lnet/aihelp/core/util/luban/Luban$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method private build()Lnet/aihelp/core/util/luban/Luban;
    .locals 2

    new-instance v0, Lnet/aihelp/core/util/luban/Luban;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/aihelp/core/util/luban/Luban;-><init>(Lnet/aihelp/core/util/luban/Luban$Builder;Lnet/aihelp/core/util/luban/Luban$1;)V

    return-object v0
.end method


# virtual methods
.method public filter(Lnet/aihelp/core/util/luban/CompressionPredicate;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mCompressionPredicate:Lnet/aihelp/core/util/luban/CompressionPredicate;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/util/luban/Luban$Builder;->build()Lnet/aihelp/core/util/luban/Luban;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/util/luban/Luban$Builder$4;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/util/luban/Luban$Builder$4;-><init>(Lnet/aihelp/core/util/luban/Luban$Builder;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lnet/aihelp/core/util/luban/Luban;->access$1100(Lnet/aihelp/core/util/luban/Luban;Lnet/aihelp/core/util/luban/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    invoke-direct {p0}, Lnet/aihelp/core/util/luban/Luban$Builder;->build()Lnet/aihelp/core/util/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/aihelp/core/util/luban/Luban;->access$1200(Lnet/aihelp/core/util/luban/Luban;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ignoreBy(I)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    iput p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mLeastCompressSize:I

    return-object p0
.end method

.method public launch()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/util/luban/Luban$Builder;->build()Lnet/aihelp/core/util/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lnet/aihelp/core/util/luban/Luban;->access$1000(Lnet/aihelp/core/util/luban/Luban;Landroid/content/Context;)V

    return-void
.end method

.method public load(Landroid/net/Uri;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    new-instance v1, Lnet/aihelp/core/util/luban/Luban$Builder$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/util/luban/Luban$Builder$3;-><init>(Lnet/aihelp/core/util/luban/Luban$Builder;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/io/File;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    new-instance v1, Lnet/aihelp/core/util/luban/Luban$Builder$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/util/luban/Luban$Builder$1;-><init>(Lnet/aihelp/core/util/luban/Luban$Builder;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    new-instance v1, Lnet/aihelp/core/util/luban/Luban$Builder$2;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/util/luban/Luban$Builder$2;-><init>(Lnet/aihelp/core/util/luban/Luban$Builder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/util/List;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lnet/aihelp/core/util/luban/Luban$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/luban/Luban$Builder;->load(Ljava/lang/String;)Lnet/aihelp/core/util/luban/Luban$Builder;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/io/File;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/luban/Luban$Builder;->load(Ljava/io/File;)Lnet/aihelp/core/util/luban/Luban$Builder;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/net/Uri;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/luban/Luban$Builder;->load(Landroid/net/Uri;)Lnet/aihelp/core/util/luban/Luban$Builder;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incoming data type exception, it must be String, File, Uri or Bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p0
.end method

.method public load(Lnet/aihelp/core/util/luban/InputStreamProvider;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mStreamProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putGear(I)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    return-object p0
.end method

.method public setCompressListener(Lnet/aihelp/core/util/luban/OnCompressListener;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mCompressListener:Lnet/aihelp/core/util/luban/OnCompressListener;

    return-object p0
.end method

.method public setFocusAlpha(Z)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->focusAlpha:Z

    return-object p0
.end method

.method public setRenameListener(Lnet/aihelp/core/util/luban/OnRenameListener;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mRenameListener:Lnet/aihelp/core/util/luban/OnRenameListener;

    return-object p0
.end method

.method public setTargetDir(Ljava/lang/String;)Lnet/aihelp/core/util/luban/Luban$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/luban/Luban$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method
