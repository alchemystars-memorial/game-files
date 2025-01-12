.class public Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "OperateViewPagerAdapter.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private elvaBotFragment:Lnet/aihelp/ui/cs/ElvaBotFragment;

.field private sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p2, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    const-string v0, "HUMAN_embedded_in_operation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/ElvaBotFragment;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->elvaBotFragment:Lnet/aihelp/ui/cs/ElvaBotFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ConversationFragment;->newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/ConversationFragment;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/model/op/OperateSection;

    invoke-virtual {p1}, Lnet/aihelp/data/model/op/OperateSection;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "operate_section"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {p1}, Lnet/aihelp/ui/op/OperateListFragment;->getInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/op/OperateListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getElvaBotFragment()Lnet/aihelp/ui/cs/ElvaBotFragment;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->elvaBotFragment:Lnet/aihelp/ui/cs/ElvaBotFragment;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method
