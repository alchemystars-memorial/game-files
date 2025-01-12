.class final Lcom/uqm/crashsight/crashreport/crash/b$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/proguard/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/uqm/crashsight/crashreport/crash/b;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/b$1;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/b$1;->b:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/b$1;->a:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(ZLjava/util/List;)V

    return-void
.end method
