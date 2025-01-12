.class public Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/crashreport/a;


# static fields
.field private static a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler; = null

.field private static b:I = 0x1

.field private static final m:Ljava/util/regex/Pattern;

.field private static n:Z

.field private static o:Z

.field private static q:Z


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private final e:Lcom/uqm/crashsight/proguard/m;

.field private f:Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;

.field private g:Ljava/lang/String;

.field private final h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private p:Lcom/uqm/crashsight/crashreport/crash/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\(\\d+\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->m:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->o:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->q:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/proguard/m;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->l:Z

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    :try_start_0
    invoke-static {p6}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p6, "crashSight"

    invoke-virtual {p1, p6, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p6

    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object p6

    iget-object p6, p6, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/app_crashSight"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :goto_0
    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->p:Lcom/uqm/crashsight/crashreport/crash/b;

    iput-object p6, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    iput-boolean p5, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->h:Z

    new-instance p4, Lcom/uqm/crashsight/crashreport/crash/jni/a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/uqm/crashsight/crashreport/crash/jni/a;-><init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/strategy/a;)V

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->f:Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "[Native] Check extra jni for CrashSight NDK v%s"

    invoke-static {v3, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "2.1.1"

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "2.3.0"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "00"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v3, v1, :cond_2

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt p0, v1, :cond_3

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    sget-boolean p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->o:Z

    if-eqz p0, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "[Native] Info setting jni can be accessed."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "[Native] Info setting jni can not be accessed."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    sget-boolean p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    if-eqz p0, :cond_5

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "[Native] Extra jni can be accessed."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "[Native] Extra jni can not be accessed."

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "[Native] Native crash report has already registered."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    :try_start_2
    const-string v0, "SDK INT IS %d"

    new-array v4, v3, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-gt v0, v4, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Oppo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v2, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    sget v7, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    iget-wide v8, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    move-object v4, p0

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->regist(Ljava/lang/String;ZIJ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "[Native] Native Crash Report enable."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    const-string p1, "-"

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/c;->b:Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    :cond_2
    const-string p1, "comInfo.sdkVersion %s"

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "[Native] nativeLibVersion == null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    :try_start_4
    const-string p1, "[Native] Failed to load CrashSight SO file."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_9

    :try_start_5
    const-string v0, ""

    const-string v4, "registNativeExceptionHandler2"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    aput-object v7, v5, v1

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    const/4 v7, 0x5

    if-eqz p1, :cond_5

    move v9, v3

    goto :goto_0

    :cond_5
    move v9, v7

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v2

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v6, v5}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    const-string v4, "registNativeExceptionHandler"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    aput-object v6, v2, v1

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->M()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-static {v0, v4, v9, v5, v2}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object v0, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    const-string v2, ""

    const-string v4, "checkExtraJni"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v2, v4, v9, v5, v6}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    :cond_7
    const-string v0, ""

    const-string v2, "enableHandler"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v1

    invoke-static {v0, v2, v9, v4, v5}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    move v7, v3

    :cond_8
    const-string p1, ""

    const-string v0, "setLogMode"

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v0, v9, v2, v3}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    :cond_9
    :goto_1
    :try_start_6
    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(ILjava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v1

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to put key value to native because of UnsatisfiedLinkError."

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    sput-boolean v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->o:Z

    return v1

    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to put key value to native."

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1
.end method

.method static synthetic a(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;ILjava/lang/String;)Z
    .locals 0

    const/16 p1, 0x3e7

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized b(Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "SDK INT IS %d"

    new-array v4, v2, [Ljava/lang/Object;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-gt v0, v4, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Oppo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    sget v7, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    iget-wide v8, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    move-object v4, p0

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->regist(Ljava/lang/String;ZIJ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "[Native] Native Crash Report enable."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object p1, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    const-string p1, "-"

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/c;->b:Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    :cond_1
    const-string p1, "comInfo.sdkVersion %s"

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->f:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    :try_start_2
    const-string p1, "[Native] Failed to load CrashSight SO file."

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_7

    :try_start_3
    const-string v0, ""

    const-string v4, "registNativeExceptionHandler2"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    aput-object v7, v5, v3

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const/4 v7, 0x5

    if-eqz p1, :cond_3

    move v9, v2

    goto :goto_0

    :cond_3
    move v9, v7

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v1

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v6, v5}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    const-string v4, "registNativeExceptionHandler"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    aput-object v6, v1, v3

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->M()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v8

    invoke-static {v0, v4, v9, v5, v1}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_4
    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iput-object v0, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    const-string v1, ""

    const-string v4, "checkExtraJni"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v1, v4, v9, v5, v6}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    :cond_5
    const-string v0, ""

    const-string v1, "enableHandler"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-static {v0, v1, v9, v4, v5}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    move v7, v2

    :cond_6
    const-string p1, ""

    const-string v0, "setLogMode"

    new-array v1, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v0, v9, v1, v2}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    :cond_7
    :goto_1
    :try_start_4
    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    iput-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->f:Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;

    return-object p0
.end method

.method private declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[Native] Native crash report has already unregistered."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->unregist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "[Native] Successfully closed native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    :try_start_2
    const-string v0, "[Native] Failed to close native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :try_start_3
    const-string v0, ""

    const-string v2, "enableHandler"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v1

    invoke-static {v0, v2, v3, v5, v4}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    const-string v0, "[Native] Successfully closed native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    :try_start_4
    const-string v0, "[Native] Failed to close native crash report."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    iput-boolean v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)Lcom/uqm/crashsight/crashreport/crash/b;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->p:Lcom/uqm/crashsight/crashreport/crash/b;

    return-object p0
.end method

.method private declared-synchronized d(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eq v0, p1, :cond_0

    const-string v0, "user change native %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/crashreport/common/strategy/a;Lcom/uqm/crashsight/proguard/m;ZLjava/lang/String;)Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;
    .locals 8

    const-class p3, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter p3

    :try_start_0
    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;-><init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;Lcom/uqm/crashsight/proguard/m;ZLjava/lang/String;)V

    sput-object v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public static isShouldHandleInJava()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->q:Z

    return v0
.end method

.method public static native nativeDaemonInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public static setShouldHandleInJava(Z)V
    .locals 3

    sput-boolean p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->q:Z

    sget-object v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 15

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/uqm/crashsight/crashreport/crash/c;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, 0x1

    if-ge v7, v5, :cond_3

    aget-object v11, v4, v7

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v14, v12, v0

    if-ltz v14, :cond_1

    cmp-long v12, v12, v2

    if-ltz v12, :cond_2

    :cond_1
    const-string v12, "[Native] Delete record file: %s"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v6

    invoke-static {v12, v10}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "[Native] Number of record files overdue: %d, has deleted: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_5
    return-void
.end method

.method public appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, ""

    const-string v2, "appendNativeLog"

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v7

    aput-object p3, v4, v8

    invoke-static {v0, v2, v3, v5, v4}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_4
    return v1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return v1

    :catch_0
    sput-boolean v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    :cond_6
    :goto_0
    return v1
.end method

.method protected native appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native appendWholeNativeLog(Ljava/lang/String;)Z
.end method

.method public checkUploadAttachMultipartRecordCrash()V
    .locals 4

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v0

    sget v1, Lcom/uqm/crashsight/CrashModule;->CRASH_UPLOAD_ATTACHMENT_RETRY_FILE_NUM:I

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/c;->e(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "[attach] try to upload %d attach records, come on!"

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v3, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$5;

    invoke-direct {v3, p0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$5;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpRecord;)V

    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "[attach] no failed attach upload records, good!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public checkUploadAttachRecordCrash()V
    .locals 6

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v0

    sget v1, Lcom/uqm/crashsight/CrashModule;->CRASH_UPLOAD_ATTACHMENT_RETRY_FILE_NUM:I

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/common/info/c;->d(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "[attach] try to upload %d attach records, come on!"

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v5, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$3;

    invoke-direct {v5, p0, v3}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$3;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "[attach] no failed attach upload records, good!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public checkUploadMmkvliteRecordCrash()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$2;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkUploadOomMmkvliteRecordCrash()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$6;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$6;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkUploadOomRecordCrash()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$7;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$7;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkUploadRecordCrash()V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$1;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$1;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dumpAnrNativeStack()V
    .locals 2

    const/16 v0, 0x13

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public dumpNativeStack()V
    .locals 2

    const/16 v0, 0x17

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public enableCatchAnrTrace()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    :cond_0
    return-void
.end method

.method public filterSigabrtSysLog()Z
    .locals 2

    const/16 v0, 0x3e6

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public generateMinidump()V
    .locals 2

    const/16 v0, 0x19

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized getAppStateMmapPath()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkvlite_log_app_state.mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCrashThreadId()J
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->f:Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;

    invoke-interface {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;->getCrashThreadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getDumpFilePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogFromNative()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getNativeLog()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    const-string v2, "getNativeLog"

    invoke-static {v0, v2, v1, v1, v1}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v1

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    return-object v1
.end method

.method public declared-synchronized getMemInfoMmapPath()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mmkvlite_log_uncatched_mem_info.mmkv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNativeExceptionHandler()Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->f:Lcom/uqm/crashsight/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method protected native getNativeKeyValueList()Ljava/lang/String;
.end method

.method protected native getNativeLog()Ljava/lang/String;
.end method

.method public native gpmProcessInfoGetPerfData()V
.end method

.method public gpmProcessInfoGetPerfDataFromNative()V
    .locals 0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->gpmProcessInfoGetPerfData()V

    return-void
.end method

.method public native gpmProcessInfoGetSmapsMem()J
.end method

.method public gpmProcessInfoGetSmapsMemFromNative()J
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->gpmProcessInfoGetSmapsMem()J

    move-result-wide v0

    return-wide v0
.end method

.method public native gpmProcessInfoInit(I)V
.end method

.method public gpmProcessInfoInitFromNative(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->gpmProcessInfoInit(I)V

    return-void
.end method

.method public isEnableCatchAnrTrace()Z
    .locals 2

    sget v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isUserOpened()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStrategyChanged(Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    iget-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq v2, v3, :cond_0

    const-string v2, "server native changed to %b"

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq p1, v2, :cond_2

    const-string v2, "native changed to %b"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_6

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, ""

    const-string v2, "putNativeKeyValue"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v7

    invoke-static {v0, v2, v3, v5, v4}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_4
    return v1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return v1

    :catch_0
    sput-boolean v1, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    :cond_6
    :goto_0
    return v1
.end method

.method protected native putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public declared-synchronized reStartNativeMonitor()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "CrashSight"

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-boolean v2, Lcom/uqm/crashsight/crashreport/crash/c;->b:Z

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->tryLoadSo(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->h:Z

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b(Z)V

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeIsAppForeground(Z)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeLaunchTime(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->h:Z

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readAppState()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getAppStateMmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->readStringFromMmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readMemInfo()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getMemInfoMmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->readStringFromMmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native readOomScore()Ljava/lang/String;
.end method

.method public readOomScoreFromNative()I
    .locals 3

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->readOomScore()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return v1
.end method

.method public native readStringFromMmap(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native regist(Ljava/lang/String;ZIJ)Ljava/lang/String;
.end method

.method public removeEmptyNativeRecordFiles()V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected native removeNativeKeyValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native setAbortMsgOpen(Z)V
.end method

.method public native setAnrDumpNativeEnable(Z)V
.end method

.method public native setCatchMonoStackOpen(Z)V
.end method

.method public native setCatchMultiSignalEnable(Z)V
.end method

.method public setCrashHandleTimeout(I)V
    .locals 1

    const/16 v0, 0x16

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public native setCrashMinidumpEnable(Z)V
.end method

.method public declared-synchronized setDumpFilePath(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnableAsyncReportException(Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public setHandleAnrSigQuit(Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public native setIsModuleNameOmit(Z)V
.end method

.method public native setLrTraceOpen(Z)V
.end method

.method public native setMmkvliteOpen(Z)V
.end method

.method public setNativeAppChannel(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNativeAppPackage(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNativeAppVersion(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected native setNativeInfo(ILjava/lang/String;)V
.end method

.method public setNativeIsAppForeground(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setNativeLaunchTime(J)Z
    .locals 1

    const/16 v0, 0xf

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setNativeUserId(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setSigkillEnable(Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public native setSmallestDumpOpen(Z)V
.end method

.method public native setUnwindExtraStackEnable(Z)V
.end method

.method public declared-synchronized setUserOpened(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d(Z)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->isUserOpened()Z

    move-result p1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->c()Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/uqm/crashsight/crashreport/common/strategy/StrategyBean;->e:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq p1, v0, :cond_2

    const-string v0, "native changed to %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startNativeMonitor()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "CrashSight"

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v1, v1, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-boolean v2, Lcom/uqm/crashsight/crashreport/crash/c;->b:Z

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->m:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->tryLoadSo(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->h:Z

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Z)V

    sget-boolean v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->n:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppVersion(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppChannel(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeAppPackage(Ljava/lang/String;)Z

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeUserId(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeIsAppForeground(Z)Z

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->setNativeLaunchTime(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->h:Z

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native testCrash()V
.end method

.method protected native testInline()V
.end method

.method public testInlineCrash()V
    .locals 0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testInline()V

    return-void
.end method

.method protected native testLogcat()V
.end method

.method public testLogcatCrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testLogcat()V

    return-void
.end method

.method protected native testLogcatStat()V
.end method

.method public testLogcatStatCrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testLogcatStat()V

    return-void
.end method

.method protected native testMalloc1GNative()V
.end method

.method public testMalloc1GNativeCrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testMalloc1GNative()V

    return-void
.end method

.method protected native testMmkvlite()V
.end method

.method public testMmkvliteCrash()V
    .locals 0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testMmkvlite()V

    return-void
.end method

.method public testNativeCrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testCrash()V

    return-void
.end method

.method public testNativeCrash(ZZZ)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x11

    invoke-direct {p0, p2, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    invoke-direct {p0, p2, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testNativeCrash()V

    return-void
.end method

.method protected native testNativeOom()V
.end method

.method public testNativeOomCrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Native] CrashSight SO file has not been load."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testNativeOom()V

    return-void
.end method

.method protected native testRegistSignalHandler()V
.end method

.method public testRegistSignalHandlerCrash()V
    .locals 0

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->testRegistSignalHandler()V

    return-void
.end method

.method protected native testThreadName()V
.end method

.method public testThreadNameCrash()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$8;

    const-string v1, "Thread-testThreadNameCrash"

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$8;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$8;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public tryLoadSo(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "[Native] Trying to load so: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    const-string p2, "[Native] Successfully loaded SO: %s"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    move v2, v0

    goto :goto_1

    :catchall_1
    move-exception p2

    move v2, v1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "[Native] Failed to load so: %s"

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v2

    :goto_2
    return v0
.end method

.method protected native unregist()Ljava/lang/String;
.end method

.method public declared-synchronized updateAppState(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getAppStateMmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->writeStringToMmap(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateMemInfo(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->getMemInfoMmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->writeStringToMmap(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public uploadAttachForSingleCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/uqm/crashsight/proguard/m;

    new-instance v7, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler$4;-><init>(Lcom/uqm/crashsight/crashreport/crash/jni/NativeCrashHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public native uploadNativeStack()Ljava/lang/String;
.end method

.method public native writeStringToMmap(Ljava/lang/String;Ljava/lang/String;)V
.end method
