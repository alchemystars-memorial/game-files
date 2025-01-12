.class final Lcom/uqm/crashsight/crashreport/crash/b$5;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/proguard/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/common/info/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/info/b;)V
    .locals 0

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b$5;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$5;->a:Lcom/uqm/crashsight/crashreport/common/info/b;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->o:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "[attach] upload attach success: %s"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
