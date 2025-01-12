.class Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/adapter/BillingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final billContainer:Landroid/widget/LinearLayout;

.field private final radioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

.field private final vDivider:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "aihelp_bill_divider"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->vDivider:Landroid/view/View;

    const-string v0, "aihelp_ll_bill"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->billContainer:Landroid/widget/LinearLayout;

    const-string v0, "aihelp_rb_bill"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->radioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lnet/aihelp/ui/adapter/BillingListAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->vDivider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->radioButton:Landroidx/appcompat/widget/AppCompatRadioButton;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$ViewHolder;->billContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method
