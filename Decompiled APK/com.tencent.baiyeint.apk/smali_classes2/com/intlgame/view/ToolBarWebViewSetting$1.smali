.class Lcom/intlgame/view/ToolBarWebViewSetting$1;
.super Ljava/lang/Object;
.source "ToolBarWebViewSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarWebViewSetting;->downloadUrlImage(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "Positive button clicked, start to save photo"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance p1, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;

    invoke-direct {p1, p0}, Lcom/intlgame/view/ToolBarWebViewSetting$1$1;-><init>(Lcom/intlgame/view/ToolBarWebViewSetting$1;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebViewSetting$1;->val$url:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/intlgame/tools/IT;->queryBitmap(Lcom/intlgame/core/INTLInnerCallback;[Ljava/lang/String;)V

    return-void
.end method
