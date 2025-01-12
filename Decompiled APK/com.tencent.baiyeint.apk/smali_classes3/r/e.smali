.class public final Lr/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/e$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/Timer;

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr/e;->a:Landroid/content/Context;

    iput-object v0, p0, Lr/e;->b:Ljava/util/Timer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr/e;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/e;->d:Z

    return-void
.end method
