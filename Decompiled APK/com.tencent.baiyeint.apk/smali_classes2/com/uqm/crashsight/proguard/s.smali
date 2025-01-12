.class public final Lcom/uqm/crashsight/proguard/s;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/proguard/s$a;
    }
.end annotation


# static fields
.field private static a:I = 0x1

.field private static b:Ljava/lang/reflect/Method; = null

.field private static c:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:J = 0x0L

.field private static e:Lcom/uqm/crashsight/crashreport/a; = null

.field private static f:Z = false

.field private static g:I = 0xa

.field private static h:Z = false

.field private static final i:[B

.field private static j:Lcom/uqm/crashsight/proguard/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uqm/crashsight/proguard/s;->i:[B

    new-instance v0, Lcom/uqm/crashsight/proguard/s$a;

    invoke-direct {v0}, Lcom/uqm/crashsight/proguard/s$a;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x74t
        0x65t
        0x6et
        0x63t
        0x65t
        0x6et
        0x74t
        0x2et
        0x68t
        0x61t
        0x77t
        0x6bt
        0x2et
        0x62t
        0x72t
        0x69t
        0x64t
        0x67t
        0x65t
        0x2et
        0x52t
        0x6ft
        0x75t
        0x74t
        0x69t
        0x6et
        0x65t
    .end array-data
.end method

.method static synthetic a(J)J
    .locals 0

    const-wide/16 p0, 0x0

    sput-wide p0, Lcom/uqm/crashsight/proguard/s;->d:J

    return-wide p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/s$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/proguard/s$a;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/s;->a(Lcom/uqm/crashsight/proguard/s$a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memInfoList toJson error"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static a(Lcom/uqm/crashsight/proguard/s$a;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "M00"

    iget-object v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "M01"

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "M04"

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "M05"

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "M06"

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "M07"

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "M08"

    iget-wide v3, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->C:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "M19"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "M09"

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "M13"

    iget v2, p0, Lcom/uqm/crashsight/proguard/s$a;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "M14"

    sget-wide v2, Lcom/uqm/crashsight/proguard/s$a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "M15"

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "M16"

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "M17"

    iget-wide v2, p0, Lcom/uqm/crashsight/proguard/s$a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "M18"

    iget p0, p0, Lcom/uqm/crashsight/proguard/s$a;->f:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/d;->a()Lcom/uqm/crashsight/crashreport/common/info/d;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "M10"

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "M11"

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "M12"

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MemStatMgr toJson error"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->f:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->e:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v1}, Lcom/uqm/crashsight/crashreport/a;->gpmProcessInfoGetPerfDataFromNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I)V
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iput p0, v0, Lcom/uqm/crashsight/proguard/s$a;->e:I

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/crashreport/a;)V
    .locals 0

    sput-object p0, Lcom/uqm/crashsight/proguard/s;->e:Lcom/uqm/crashsight/crashreport/a;

    return-void
.end method

.method public static a(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/proguard/s$a;",
            ">;J)V"
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    rem-long/2addr p1, v1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uqm/crashsight/proguard/s$a;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->i()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->v()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->w()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/lang/String;

    iget-wide p1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/s$a;->a:J

    sget-object p1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget-wide p1, p1, Lcom/uqm/crashsight/proguard/s$a;->b:J

    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/s$a;->b:J

    sget-object p1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget-wide p1, p1, Lcom/uqm/crashsight/proguard/s$a;->c:J

    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/s$a;->c:J

    sget-object p1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget-wide p1, p1, Lcom/uqm/crashsight/proguard/s$a;->d:J

    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/s$a;->d:J

    sget-object p1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget p1, p1, Lcom/uqm/crashsight/proguard/s$a;->e:I

    iput p1, p0, Lcom/uqm/crashsight/proguard/s$a;->e:I

    sget-object p1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget p1, p1, Lcom/uqm/crashsight/proguard/s$a;->f:I

    iput p1, p0, Lcom/uqm/crashsight/proguard/s$a;->f:I

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 1

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/uqm/crashsight/proguard/s;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b()Lcom/uqm/crashsight/proguard/s$a;
    .locals 10

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/uqm/crashsight/proguard/s;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x3e8

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gez v1, :cond_7

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/uqm/crashsight/proguard/s;->d:J

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->c:Ljava/lang/Class;

    if-nez v1, :cond_2

    :cond_1
    sget v1, Lcom/uqm/crashsight/proguard/s;->a:I

    add-int/lit8 v5, v1, -0x1

    sput v5, Lcom/uqm/crashsight/proguard/s;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_2

    :try_start_1
    new-instance v1, Ljava/lang/String;

    sget-object v5, Lcom/uqm/crashsight/proguard/s;->i:[B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/uqm/crashsight/proguard/s;->c:Ljava/lang/Class;

    const-string v5, "getCurrentPss"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/uqm/crashsight/proguard/s;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reflection apm pss api error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->b:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    const/4 v7, 0x0

    :try_start_3
    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v7, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    shl-long/2addr v8, v5

    iput-wide v8, v7, Lcom/uqm/crashsight/proguard/s$a;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v6

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reflection apm pss api error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    sget-object v7, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget-wide v7, v7, Lcom/uqm/crashsight/proguard/s$a;->b:J

    cmp-long v3, v7, v3

    if-lez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get pss from apm success: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    iget-wide v7, v4, Lcom/uqm/crashsight/proguard/s$a;->b:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    sget v2, Lcom/uqm/crashsight/proguard/s;->a:I

    if-gtz v2, :cond_6

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->f:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->e:Lcom/uqm/crashsight/crashreport/a;

    sget v2, Lcom/uqm/crashsight/proguard/s;->g:I

    invoke-interface {v1, v2}, Lcom/uqm/crashsight/crashreport/a;->gpmProcessInfoInitFromNative(I)V

    sput-boolean v6, Lcom/uqm/crashsight/proguard/s;->f:Z

    :cond_5
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    sget-object v2, Lcom/uqm/crashsight/proguard/s;->e:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v2}, Lcom/uqm/crashsight/crashreport/a;->gpmProcessInfoGetSmapsMemFromNative()J

    move-result-wide v2

    shl-long/2addr v2, v5

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/s$a;->b:J

    sget-boolean v1, Lcom/uqm/crashsight/proguard/s;->h:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    sget-object v2, Lcom/uqm/crashsight/proguard/s;->e:Lcom/uqm/crashsight/crashreport/a;

    invoke-interface {v2}, Lcom/uqm/crashsight/crashreport/a;->readOomScoreFromNative()I

    move-result v2

    iput v2, v1, Lcom/uqm/crashsight/proguard/s$a;->f:I

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->j()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/s$a;->c:J

    sget-object v1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->k()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/s$a;->d:J

    :cond_7
    sget-object v1, Lcom/uqm/crashsight/proguard/s;->j:Lcom/uqm/crashsight/proguard/s$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(I)V
    .locals 1

    const-class v0, Lcom/uqm/crashsight/proguard/s;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/uqm/crashsight/proguard/s;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
