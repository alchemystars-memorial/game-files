.class final Lcom/uqm/crashsight/crashreport/biz/a$a;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/biz/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

.field private synthetic c:Lcom/uqm/crashsight/crashreport/biz/a;


# direct methods
.method public constructor <init>(Lcom/uqm/crashsight/crashreport/biz/a;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->c:Lcom/uqm/crashsight/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    iput-boolean p3, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    :cond_0
    const-string v0, "[UserInfo] Record user info."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->c:Lcom/uqm/crashsight/crashreport/biz/a;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->b:Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;

    invoke-static {v0, v2, v1}, Lcom/uqm/crashsight/crashreport/biz/a;->a(Lcom/uqm/crashsight/crashreport/biz/a;Lcom/uqm/crashsight/crashreport/biz/UserInfoBean;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/a$a;->c:Lcom/uqm/crashsight/crashreport/biz/a;

    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/uqm/crashsight/crashreport/biz/a$2;

    invoke-direct {v2, v0}, Lcom/uqm/crashsight/crashreport/biz/a$2;-><init>(Lcom/uqm/crashsight/crashreport/biz/a;)V

    invoke-virtual {v1, v2}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method
