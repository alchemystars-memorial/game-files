.class public Lnet/aihelp/core/util/viewer/ViewerLayout;
.super Landroid/widget/RelativeLayout;
.source "ViewerLayout.java"


# instance fields
.field private imagePath:Ljava/lang/String;

.field private imageView:Lnet/aihelp/core/util/viewer/PhotoView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rootView:Landroid/view/View;

.field private videoPath:Ljava/lang/String;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/util/viewer/ViewerLayout;)Landroid/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/util/viewer/ViewerLayout;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->finishVideoBuffer()V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/core/util/viewer/ViewerLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/util/viewer/ViewerLayout;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private finishVideoBuffer()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imageView:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/viewer/PhotoView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "aihelp_dialog_media_viewer"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->rootView:Landroid/view/View;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->setGravity(I)V

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->getBackgroundColorByAlpha(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->rootView:Landroid/view/View;

    const-string v1, "aihelp_image_view"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/viewer/PhotoView;

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imageView:Lnet/aihelp/core/util/viewer/PhotoView;

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->rootView:Landroid/view/View;

    const-string v1, "aihelp_video_view"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->rootView:Landroid/view/View;

    const-string v1, "aihelp_progress_bar"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lnet/aihelp/core/util/viewer/ViewerLayout$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/util/viewer/ViewerLayout$1;-><init>(Lnet/aihelp/core/util/viewer/ViewerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    new-instance v0, Lnet/aihelp/core/util/viewer/ViewerLayout$2;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/viewer/ViewerLayout$2;-><init>(Lnet/aihelp/core/util/viewer/ViewerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getBackgroundColorByAlpha(F)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public setOnChildViewClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imageView:Lnet/aihelp/core/util/viewer/PhotoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imageView:Lnet/aihelp/core/util/viewer/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->enableGesture(Z)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoView:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imageView:Lnet/aihelp/core/util/viewer/PhotoView;

    new-instance v2, Lnet/aihelp/core/util/viewer/ViewerLayout$3;

    invoke-direct {v2, p0}, Lnet/aihelp/core/util/viewer/ViewerLayout$3;-><init>(Lnet/aihelp/core/util/viewer/ViewerLayout;)V

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Callback;)V

    :cond_1
    return-void
.end method

.method public updateImageResource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public updateVideoResource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ViewerLayout;->videoPath:Ljava/lang/String;

    return-void
.end method
