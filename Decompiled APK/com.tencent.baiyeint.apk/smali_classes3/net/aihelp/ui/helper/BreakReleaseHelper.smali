.class public Lnet/aihelp/ui/helper/BreakReleaseHelper;
.super Ljava/lang/Object;
.source "BreakReleaseHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lnet/aihelp/ui/helper/BreakReleaseHelper;->count:I

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    add-int/2addr p1, v0

    iput p1, p0, Lnet/aihelp/ui/helper/BreakReleaseHelper;->count:I

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sp_log_toggle"

    invoke-virtual {p1, v2, v1}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->initLog(Z)V

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lnet/aihelp/init/AIHelpSupport;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Powered by AIHELP.NET @ %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
