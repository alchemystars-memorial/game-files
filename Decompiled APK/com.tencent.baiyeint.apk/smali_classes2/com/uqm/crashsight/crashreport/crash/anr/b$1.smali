.class final Lcom/uqm/crashsight/crashreport/crash/anr/b$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/crashreport/crash/anr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/anr/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b$1;->a:Lcom/uqm/crashsight/crashreport/crash/anr/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/anr/b$1;->a:Lcom/uqm/crashsight/crashreport/crash/anr/b;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/anr/b;->c()V

    return-void
.end method
