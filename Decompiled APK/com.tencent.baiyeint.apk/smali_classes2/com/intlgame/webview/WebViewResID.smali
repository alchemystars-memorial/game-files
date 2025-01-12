.class public Lcom/intlgame/webview/WebViewResID;
.super Ljava/lang/Object;
.source "WebViewResID.java"


# static fields
.field public static anim_progress_loading:I

.field public static anim_titlebar_hide:I

.field public static anim_titlebar_show:I

.field public static anim_toolbar_hide:I

.field public static anim_toolbar_show:I

.field public static back:I

.field public static backUnclickable:I

.field public static color_toolbar_invisible:I

.field public static color_toolbar_visible:I

.field public static dimen_fling_limit_x:I

.field public static dimen_fling_limit_y:I

.field public static dimen_titlebar_height:I

.field public static drawable_open_by_otherbrowser:I

.field public static forward:I

.field public static forwardUnclickable:I

.field public static land_more:I

.field public static layout_share_item:I

.field public static layout_webview_activity:I

.field public static more:I

.field public static playout:I

.field public static refresh:I

.field public static return_app:I

.field public static return_app_unclickable:I

.field public static stop:I

.field public static str_cancel:I

.field public static str_confirm:I

.field public static str_openbrowser:I

.field public static str_untitle_share:I

.field public static str_upload_file_title:I

.field public static titleBar:I

.field public static toolbar:I

.field public static viewProgressBar:I

.field public static webTitle:I

.field public static webViewFrameLayout:I

.field public static webview:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "intl_webview_activity"

    const-string v2, "layout"

    invoke-static {p0, v1, v2, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->layout_webview_activity:I

    const-string v1, "playout"

    const-string v3, "id"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->playout:I

    const-string v1, "webview"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->webview:I

    const-string v1, "webview_framelayout"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->webViewFrameLayout:I

    const-string v1, "webTitle"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->webTitle:I

    const-string v1, "refresh"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->refresh:I

    const-string v1, "stop"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->stop:I

    const-string v1, "back"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->back:I

    const-string v1, "backUnclickable"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->backUnclickable:I

    const-string v1, "forward"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->forward:I

    const-string v1, "forwardUnclickable"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->forwardUnclickable:I

    const-string v1, "return_app"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->return_app:I

    const-string v1, "return_app_disabled"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->return_app_unclickable:I

    const-string v1, "more"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->more:I

    const-string v1, "titlebar"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->titleBar:I

    const-string v1, "toolbar"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->toolbar:I

    const-string v1, "view_progress_bar"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->viewProgressBar:I

    const-string v1, "landMore"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->land_more:I

    const-string v1, "intl_webview_share_otherbrowser"

    const-string v3, "drawable"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->drawable_open_by_otherbrowser:I

    const-string v1, "confirm"

    const-string v3, "string"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->str_confirm:I

    const-string v1, "cancel"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->str_cancel:I

    const-string v1, "openbrowser"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->str_openbrowser:I

    const-string v1, "intl_upload_file_title"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->str_upload_file_title:I

    const-string v1, "intl_untitle_share"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->str_untitle_share:I

    const-string v1, "intl_webview_toolbar_visible"

    const-string v3, "color"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->color_toolbar_visible:I

    const-string v1, "intl_webview_toolbar_invisible"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->color_toolbar_invisible:I

    const-string v1, "titlebar_height"

    const-string v3, "dimen"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->dimen_titlebar_height:I

    const-string v1, "fling_limit_x"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->dimen_fling_limit_x:I

    const-string v1, "fling_limit_y"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->dimen_fling_limit_y:I

    const-string v1, "intl_webview_anim_toolbar_hide"

    const-string v3, "anim"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->anim_toolbar_hide:I

    const-string v1, "intl_webview_anim_toolbar_show"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->anim_toolbar_show:I

    const-string v1, "intl_webview_anim_titlebar_hide"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->anim_titlebar_hide:I

    const-string v1, "intl_webview_anim_titlebar_show"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->anim_titlebar_show:I

    const-string v1, "intl_webview_share_item"

    invoke-static {p0, v1, v2, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/intlgame/webview/WebViewResID;->layout_share_item:I

    const-string v1, "intl_webview_anim_loading"

    invoke-static {p0, v1, v3, v0}, Lcom/intlgame/tools/IT;->loadIdByResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/intlgame/webview/WebViewResID;->anim_progress_loading:I

    return-void
.end method
