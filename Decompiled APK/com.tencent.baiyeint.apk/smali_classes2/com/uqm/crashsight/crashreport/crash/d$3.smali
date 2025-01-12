.class final Lcom/uqm/crashsight/crashreport/crash/d$3;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->b:Ljava/lang/Thread;

    iput p3, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->c:I

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->f:Ljava/lang/String;

    iput p7, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/d;->a()Lcom/uqm/crashsight/crashreport/crash/d;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[ExtraCrashManager] Extra crash manager has not been initialized."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid extra info str: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    move-object v8, v1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/d;->a()Lcom/uqm/crashsight/crashreport/crash/d;

    move-result-object v2

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->b:Ljava/lang/Thread;

    iget v4, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->c:I

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->f:Ljava/lang/String;

    iget v9, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->g:I

    invoke-static/range {v2 .. v9}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Lcom/uqm/crashsight/crashreport/crash/d;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->f:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "[ExtraCrashManager] Crash error %s %s %s"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
