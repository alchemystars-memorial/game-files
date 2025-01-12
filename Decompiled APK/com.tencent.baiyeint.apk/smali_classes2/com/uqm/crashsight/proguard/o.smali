.class public final Lcom/uqm/crashsight/proguard/o;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Ljava/lang/String; = "[CrashSightReportInfo]"

.field private static b:Ljava/lang/String; = "[CrashSightReport]"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    if-eqz p0, :cond_7

    if-eq p0, p2, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    sget-object p0, Lcom/uqm/crashsight/proguard/o;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_4
    sget-object p0, Lcom/uqm/crashsight/proguard/o;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_5
    sget-object p0, Lcom/uqm/crashsight/proguard/o;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_6
    sget-object p0, Lcom/uqm/crashsight/proguard/o;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_7
    sget-object p0, Lcom/uqm/crashsight/proguard/o;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/proguard/o;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/uqm/crashsight/proguard/o;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/proguard/o;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/proguard/o;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/proguard/o;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
