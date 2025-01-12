.class public Lcom/uqm/crashsight/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static M:Ljava/lang/String; = "unknown"

.field private static ah:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private static final ax:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/uqm/crashsight/crashreport/a;

.field public E:Landroid/content/SharedPreferences;

.field private final F:Landroid/content/Context;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:J

.field private T:J

.field private U:J

.field private V:J

.field private W:J

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public final a:J

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/Boolean;

.field private ae:Ljava/lang/String;

.field private af:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field private ai:I

.field private aj:Ljava/lang/String;

.field private ak:I

.field private final al:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final am:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final an:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Z

.field private ap:Ljava/lang/Boolean;

.field private aq:Ljava/lang/Boolean;

.field private ar:Z

.field private final as:Ljava/lang/Object;

.field private final at:Ljava/lang/Object;

.field private final au:Ljava/lang/Object;

.field private final av:Ljava/lang/Object;

.field private final aw:Ljava/lang/Object;

.field private final ay:Ljava/lang/Object;

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/crashreport/common/info/a;->ax:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->e:Z

    const-string v1, "4.2.11"

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->h:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->J:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->K:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->L:Ljava/lang/String;

    const-string v3, "unknown"

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->N:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->O:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Q:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->R:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->S:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->T:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->U:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->V:J

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->W:J

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->X:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Y:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Z:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aa:Z

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ab:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ac:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ad:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ae:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->af:Ljava/util/Map;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ag:Ljava/util/Map;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->o:Ljava/util/List;

    const/4 v4, -0x1

    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ai:I

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aj:Ljava/lang/String;

    iput v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ak:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->am:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->an:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ao:Z

    iput-object v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->p:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->q:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->r:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->s:J

    iput-wide v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->t:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->u:Z

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->y:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->z:Z

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->A:Z

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ap:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aq:Ljava/lang/Boolean;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->B:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->C:Ljava/util/List;

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->D:Lcom/uqm/crashsight/crashreport/a;

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ar:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->as:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->at:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->av:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aw:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ay:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    iput-byte v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->b:B

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->v:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Android "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",level "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->o:Ljava/util/List;

    const-string v4, "CS_APPID"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ac:Ljava/lang/String;

    const-string v5, "APP_ID"

    invoke-virtual {p0, v5, v4}, Lcom/uqm/crashsight/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "CS_APP_VERSION"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_2
    const-string v4, "CS_APP_CHANNEL"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    iput-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_3
    const-string v4, "CS_ENABLE_DEBUG"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->u:Z

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->x:Ljava/lang/String;

    :cond_5
    const-string v2, "CS_APP_BUILD_NO"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_6
    const-string v2, "CS_AREA"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->y:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    :try_start_2
    const-string v1, "crashSight_db_"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->A:Z

    const-string v0, "App is first time to be installed on the device."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget-boolean v1, Lcom/uqm/crashsight/b;->c:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    const-string v0, "CS_COMMON_VALUES"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "com info create end"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static M()I
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->c()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;
    .locals 6

    const-class v0, Lcom/uqm/crashsight/crashreport/common/info/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/a;->ah:Lcom/uqm/crashsight/crashreport/common/info/a;

    if-nez v1, :cond_2

    new-instance v1, Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/info/a;->ah:Lcom/uqm/crashsight/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :try_start_1
    const-string v2, "cs_cached_uuid_key"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cs_cached_uuid_key"

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cs_last_app_version_code"

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->K:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdk uuid first install lastAppVersionCode: , currentAppVersionCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->J:Ljava/lang/String;

    const-string v3, "cs_last_app_version_code"

    const-string v4, "-1"

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/u;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sdk uuid same version lastAppVersionCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentAppVersionCode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sdk uuid upgrade version lastAppVersionCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentAppVersionCode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->w:Ljava/lang/String;

    const-string v4, "cs_last_app_version_code"

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->K:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->L:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdk uuid deviceId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ncachedUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ncurrentVersionUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nredisKeyUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, p0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare uuid exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    sget-object p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ah:Lcom/uqm/crashsight/crashreport/common/info/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "10000"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uqm/crashsight/crashreport/common/info/a;->M:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Lcom/uqm/crashsight/crashreport/common/info/a;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/common/info/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/a;->ah:Lcom/uqm/crashsight/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/info/a;->ax:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/info/a;->M:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final A()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ad:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ad:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ad:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ae:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/uqm/crashsight/crashreport/common/info/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ae:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ROM ID: %s"

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final E()I
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final F()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final G()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ay:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->am:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->am:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final H()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->an:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->an:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final I()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aj:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final J()I
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ai:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ak:I

    return v0
.end method

.method public final declared-synchronized L()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->af:Ljava/util/Map;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ag:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final N()Z
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ap:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is it a virtual machine? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ap:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final O()Z
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aq:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aq:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Does it has hook frame? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aq:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final P()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->U:J

    return-wide v0
.end method

.method public final Q()J
    .locals 2

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->V:J

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[OOM] packageName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "M20"

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "M21"

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v3

    const/16 v5, 0xa

    shl-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "M22"

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v3

    shl-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "M23"

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ai:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ai:I

    const-string p1, "user scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget v3, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ai:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ac:Ljava/lang/String;

    const-string v0, "APP_ID"

    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ao:Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->D:Lcom/uqm/crashsight/crashreport/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uqm/crashsight/crashreport/a;->setNativeIsAppForeground(Z)Z

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/f;->a()Lcom/uqm/crashsight/crashreport/common/info/f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ao:Z

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/crashreport/common/info/f;->a(Z)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 2

    iget p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ak:I

    const/16 v0, 0x5e20

    if-eq p1, v0, :cond_0

    iput v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ak:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "server scene tag %d changed to tag %d"

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aa:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ao:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ay:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->am:Ljava/util/Map;

    const-string v2, "E8"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sdk uuid setDeviceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cachedUuid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->J:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentVersionUuid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->K:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", redisKeyUuid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->L:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->av:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->an:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->N:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ar:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->O:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1

    throw v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->H:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->au:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->al:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aj:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aj:Ljava/lang/String;

    const-string v2, "user scene tag %s changed to tag %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBase64DeviceModel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->h:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "unknown"

    return-object v0
.end method

.method public final declared-synchronized n()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->N:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->O:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aa:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aa:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Q:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->aa:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->R:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->R:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final s()J
    .locals 4

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->S:J

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->S:J

    return-wide v0
.end method

.method public final t()J
    .locals 4

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->T:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->T:J

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->T:J

    return-wide v0
.end method

.method public final u()J
    .locals 4

    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->W:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->W:J

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->W:J

    return-wide v0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->X:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/e;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->X:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Y:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Y:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->F:Landroid/content/Context;

    const-string v2, "CrashSightSdkInfos"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->B:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "SDK_INFO = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "SDK_INFO"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "SDK_INFO is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized y()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Z:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->Z:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ab:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ab:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/info/a;->ab:Ljava/lang/String;

    return-object v0
.end method
