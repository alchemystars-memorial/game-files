.class public final Lo/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/n$a;,
        Lo/n$b;
    }
.end annotation


# static fields
.field public static e:Z = false


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/util/Timer;

.field public d:Lo/n$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lo/n;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/n;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lo/n;->c:Ljava/util/Timer;

    iput-object v0, p0, Lo/n;->d:Lo/n$b;

    return-void
.end method
