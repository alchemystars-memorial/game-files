.class final Lcom/uqm/crashsight/crashreport/biz/b$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/biz/b;->a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/uqm/crashsight/CrashSightStrategy;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/biz/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/biz/b$1;->b:Lcom/uqm/crashsight/CrashSightStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/biz/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/biz/b$1;->b:Lcom/uqm/crashsight/CrashSightStrategy;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/biz/b;->b(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    return-void
.end method
