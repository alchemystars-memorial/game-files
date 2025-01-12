.class final Lcom/uqm/crashsight/proguard/r$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/proguard/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/r$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/proguard/r$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/proguard/r$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/r$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/r$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uqm/crashsight/proguard/r$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/uqm/crashsight/proguard/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
