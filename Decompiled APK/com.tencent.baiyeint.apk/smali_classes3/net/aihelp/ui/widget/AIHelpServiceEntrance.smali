.class public Lnet/aihelp/ui/widget/AIHelpServiceEntrance;
.super Landroid/widget/RelativeLayout;
.source "AIHelpServiceEntrance.java"


# instance fields
.field vNotification:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_layout_service_entrance"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_tv_entrance"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-object p2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqCSEntranceText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "aihelp_v_unread_status"

    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    const-string p2, "#FF4747"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x3e7

    invoke-static {p2, v0}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    return-void
.end method

.method private updateEntranceStatus(ZZ)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    if-eqz p2, :cond_0

    move v0, p1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewClickEvent(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V
    .locals 1

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;

    invoke-direct {v0, p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;-><init>(Lnet/aihelp/ui/widget/AIHelpServiceEntrance;Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setup(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewVisibility(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewClickEvent(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V

    :cond_0
    return-void
.end method

.method public updateViewVisibility(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "faq_support_moment"

    const/16 v1, 0x3e9

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isHasUnreadMsg()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_4

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketActive()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_3

    invoke-direct {p0, v0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    goto :goto_1

    :cond_3
    const-class p1, Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FaqContentFragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, v0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0, v2, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    :cond_5
    :goto_1
    return-void
.end method
