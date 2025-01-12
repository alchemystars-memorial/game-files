.class public final Li/m;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Exception;

.field public d:Li/l;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li/m;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Li/m;->c:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/m;->e:Z

    iput-boolean v0, p0, Li/m;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget v0, p0, Li/m;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Li/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/m;->c:Ljava/lang/Exception;

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final b(Li/l;)V
    .locals 0

    iput-object p1, p0, Li/m;->d:Li/l;

    return-void
.end method
