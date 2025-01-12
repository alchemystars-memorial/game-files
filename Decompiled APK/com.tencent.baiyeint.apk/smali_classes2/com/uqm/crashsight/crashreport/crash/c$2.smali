.class final Lcom/uqm/crashsight/crashreport/crash/c$2;
.super Ljava/lang/Thread;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/c$2;->a:Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c$2;->a:Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->b(Lcom/uqm/crashsight/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c$2;->a:Lcom/uqm/crashsight/crashreport/crash/c;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/c;->q:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/b;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Size of crash list: %s"

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x14

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v6, v5

    :goto_0
    int-to-long v10, v6

    cmp-long v7, v10, v8

    if-gez v7, :cond_1

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v4

    :cond_2
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/c$2;->a:Lcom/uqm/crashsight/crashreport/crash/c;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/crash/c;->q:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v2, v0, v5, v5, v5}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;ZZZ)V

    sget-boolean v2, Lcom/uqm/crashsight/crashreport/crash/c;->n:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-boolean v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v4, :cond_3

    iget v4, v3, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->u:I

    if-lez v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/c$2;->a:Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/c;->b(Lcom/uqm/crashsight/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/u;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
