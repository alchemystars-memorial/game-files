.class public Lnet/aihelp/ui/adapter/BillingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BillingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;,
        Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final listView:Landroid/widget/ListView;

.field private listener:Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;

.field private final mBillingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/storyline/BotBillEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentCheckedEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mBillingList:Ljava/util/List;

    iput-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->listView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/ui/adapter/BillingListAdapter;)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mCurrentCheckedEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    return-object p0
.end method

.method static synthetic access$402(Lnet/aihelp/ui/adapter/BillingListAdapter;Lnet/aihelp/data/model/cs/storyline/BotBillEntity;)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mCurrentCheckedEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    return-object p1
.end method

.method static synthetic access$500(Lnet/aihelp/ui/adapter/BillingListAdapter;)Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->listener:Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;

    return-object p0
.end method

.method private getBillInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 8

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    sget-object v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v6}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v4

    invoke-direct {p1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    sget-object v5, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v5}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, p1, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v5, v4, v2, p2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private getSortedKeys(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCheckedBill()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mCurrentCheckedEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->getOriginJson()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mBillingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->getItem(I)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mBillingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mBillingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mContext:Landroid/content/Context;

    const-string p3, "aihelp_ada_billing_list"

    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;

    invoke-direct {p3, p2, v0}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;-><init>(Landroid/view/View;Lnet/aihelp/ui/adapter/BillingListAdapter$1;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mBillingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$100(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$100(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p1

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v3, v4}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$200(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object p1

    iget-object v1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->makeSelector(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$200(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object p1

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$300(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->getOriginJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->getSortedKeys(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$300(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->getOriginJson()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->getBillInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    sget-boolean p1, Lnet/aihelp/common/Const;->TOGGLE_SHEET_DIALOG_ENABLE_INTERACTION:Z

    if-eqz p1, :cond_3

    new-instance p1, Lnet/aihelp/ui/adapter/BillingListAdapter$1;

    invoke-direct {p1, p0, v0}, Lnet/aihelp/ui/adapter/BillingListAdapter$1;-><init>(Lnet/aihelp/ui/adapter/BillingListAdapter;Lnet/aihelp/data/model/cs/storyline/BotBillEntity;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    invoke-static {p3}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->access$200(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatRadioButton;->setVisibility(I)V

    :goto_3
    return-object p2
.end method

.method public setOnOrderCheckedListener(Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->listener:Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;

    return-void
.end method

.method public update(Lorg/json/JSONArray;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter;->mBillingList:Ljava/util/List;

    new-instance v2, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/adapter/BillingListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
