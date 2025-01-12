.class final Lcom/uqm/crashsight/crashreport/crash/b$3;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/proguard/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/common/info/b;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->o:J

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->b:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "[attach] upload attach success: %s"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const/4 v0, 0x6

    iput v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete cached csZipPath failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$3;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->p:J

    :cond_1
    return-void
.end method
