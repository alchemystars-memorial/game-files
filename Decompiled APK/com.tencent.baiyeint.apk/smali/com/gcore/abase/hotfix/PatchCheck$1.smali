.class final Lcom/gcore/abase/hotfix/PatchCheck$1;
.super Ljava/lang/Object;
.source "PatchCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gcore/abase/hotfix/PatchCheck;->checkSafeModeCount(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/gcore/abase/hotfix/PatchCheck$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/gcore/abase/hotfix/PatchCheck$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gcore/abase/hotfix/PatchCheck;->setSafeModeCount(Landroid/content/Context;I)V

    return-void
.end method
