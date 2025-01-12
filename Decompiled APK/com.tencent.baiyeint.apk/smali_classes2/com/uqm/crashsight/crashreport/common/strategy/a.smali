.class public Lcom/uqm/crashsight/crashreport/common/strategy/a;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:I = 0x3e8

.field private static b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

.field private static h:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/uqm/crashsight/proguard/m;

.field private final e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

.field private f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

.field private g:Landroid/content/Context;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p1

    iget-object p1, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->y:Ljava/lang/String;

    const-string v0, "oversea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "na_https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    invoke-direct {p1}, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d:Lcom/uqm/crashsight/proguard/m;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/common/strategy/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/crashreport/common/strategy/a;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/crashreport/common/strategy/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/common/strategy/a;"
        }
    .end annotation

    const-class v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->b:Lcom/uqm/crashsight/crashreport/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "URL user set is invalid."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/uqm/crashsight/crashreport/common/strategy/a;)Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object p0
.end method

.method public static d()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    .locals 2

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/e;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/proguard/g;

    iget-object v1, v0, Lcom/uqm/crashsight/proguard/g;->g:[B

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/uqm/crashsight/proguard/g;->g:[B

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/u;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->d:Lcom/uqm/crashsight/proguard/m;

    new-instance v1, Lcom/uqm/crashsight/crashreport/common/strategy/a$1;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/common/strategy/a$1;-><init>(Lcom/uqm/crashsight/crashreport/common/strategy/a;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iget-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "localStrategy strategyLastUpdateTime == downloadStrategy strategyLastUpdateTime"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    invoke-direct {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;-><init>()V

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableQuery()Z

    move-result v2

    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEnableUserInfo()Z

    move-result v2

    iput-boolean v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    sget-object v2, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "[Strategy] Upload url changes to %s"

    invoke-static {v4, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "[Strategy] Exception upload url changes to %s"

    invoke-static {v4, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getSecurity()Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdSecurity;->getEncKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getStrategylastUpdateTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:J

    :cond_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "B11"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v3, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    goto :goto_0

    :cond_7
    iput-boolean v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "B3"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->v:J

    :cond_8
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:J

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getEventTimeInterval()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->u:J

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "B27"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    iput v2, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getValueMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "B25"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-boolean v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    goto :goto_2

    :cond_a
    iput-boolean v3, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    :cond_b
    :goto_2
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    iget-boolean v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    iget-boolean v4, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x3

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x4

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x5

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->l:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x6

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->m:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x7

    iget-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->o:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    const/16 v4, 0x8

    iget-boolean v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/16 v4, 0x9

    iget-wide v6, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->n:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d"

    invoke-static {v4, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ""

    if-nez v2, :cond_c

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "[Strategy] download url is null"

    invoke-static {v6, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-object v4, v2, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    :cond_c
    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;->getExpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "[Strategy] download crashurl is null"

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iput-object v4, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    :cond_d
    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/uqm/crashsight/proguard/e;->b(I)V

    new-instance p1, Lcom/uqm/crashsight/proguard/g;

    invoke-direct {p1}, Lcom/uqm/crashsight/proguard/g;-><init>()V

    iput v5, p1, Lcom/uqm/crashsight/proguard/g;->b:I

    iget-wide v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->c:J

    iput-wide v1, p1, Lcom/uqm/crashsight/proguard/g;->a:J

    iget-wide v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->d:J

    iput-wide v1, p1, Lcom/uqm/crashsight/proguard/g;->e:J

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/uqm/crashsight/proguard/g;->g:[B

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/proguard/e;->a(Lcom/uqm/crashsight/proguard/g;)Z

    invoke-virtual {p0, v0, v3}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;I)V
    .locals 5

    const/16 v0, 0x348

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/a;

    :try_start_0
    const-string v1, "[Strategy] Notify %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/a;->onSelfDefiedStrategyChanged(Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RqdStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/uqm/crashsight/crashreport/biz/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[Strategy] Notify %s"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/uqm/crashsight/crashreport/biz/b;->a(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;Z)V

    iget-object p2, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/a;

    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Lcom/uqm/crashsight/a;->onServerStrategyChanged(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "[Strategy] Cloud Strategy is  %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->f:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object v0

    :cond_2
    sget-object v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    sget-object v1, Lcom/uqm/crashsight/crashreport/common/strategy/a;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->e:Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    return-object v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/common/strategy/a;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
