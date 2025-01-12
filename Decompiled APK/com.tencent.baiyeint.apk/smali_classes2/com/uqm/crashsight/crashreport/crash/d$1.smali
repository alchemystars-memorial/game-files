.class final Lcom/uqm/crashsight/crashreport/crash/d$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/d;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/d;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d$1;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/d$1;->a:Lcom/uqm/crashsight/crashreport/crash/d;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Lcom/uqm/crashsight/crashreport/crash/d;)V

    return-void
.end method
