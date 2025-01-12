.class public Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "TimeMsgAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
    .locals 2

    invoke-virtual {p1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lnet/aihelp/utils/DateFormatUtil;->getProperDate(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v0, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_hint"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;->isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/cs/ConversationMsg;I)Z
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->getMsgType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
