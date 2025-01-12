.class public Lcom/uqm/crashsight/proguard/u;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/io/BufferedReader;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_0
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/u;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "threadtime"

    const-string v1, "-v"

    const-string v2, "-d"

    const-string v3, "logcat"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x4

    const-string v1, "-s"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aput-object p1, v5, v0

    move-object p1, v5

    :goto_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\n[error:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_7
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_a
    throw p0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/uqm/crashsight/proguard/u;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    const-string v1, "/system/bin/sh"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "sh"

    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "-c"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "getprop"

    const/4 v5, 0x2

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Lcom/uqm/crashsight/proguard/u;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Successfully get \'getprop\' list."

    invoke-static {v0, v2, v1}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "\\[(.+)\\]: \\[(.*)\\]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-array p0, v4, [Ljava/lang/Object;

    sget-object v1, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v3

    const-string v1, "Systems properties number: %d."

    invoke-static {v0, v1, p0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    sget-object p0, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_6
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/uqm/crashsight/proguard/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_7
    const-string p0, "fail"

    return-object p0
.end method

.method public static a(Ljava/io/File;IZ)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "utf-8"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, p1, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v1, p0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_4
    :goto_4
    return-object v0

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_5
    throw p0

    :cond_6
    :goto_6
    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    if-ge v1, v2, :cond_2

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const-string p0, "fail"

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Util] Failed to start a thread to execute task with message: %s"

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const-string p1, "unknown(low memory)"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_4
    :try_start_5
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    return-object v0

    :catchall_3
    move-exception p0

    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    throw p0
.end method

.method public static a(IZ)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v4, v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    if-lez p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lt v7, p0, :cond_3

    const-string v3, "\n[Stack over limit size :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , has been cut!]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "pluginNum"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pluginKey"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pluginVal"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "plugInId"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "plugInUUID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "plugInVersion"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    invoke-direct {v9, v6, v7, v8}, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne p0, v3, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v4, p0, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-class v3, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-array p0, v4, [Ljava/lang/Object;

    const-string v1, "map plugin parcel error!"

    invoke-static {v1, p0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "pluginNum"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pluginKey"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pluginVal"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "plugInId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "plugInUUID"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "plugInVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;

    iget-object v4, v4, Lcom/uqm/crashsight/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_4
    :goto_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p3, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "[Util] Try to lock file:%s (pid=%d | tid=%d)"

    invoke-static {v3, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long p2, v6, p2

    if-gez p2, :cond_0

    return v2

    :cond_0
    const-string p2, "[Util] Lock file (%s) is expired, unlock it."

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/u;->b(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "[Util] Successfully locked file: %s (pid=%d | tid=%d)"

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v4

    :cond_2
    const-string p0, "[Util] Failed to locked file: %s (pid=%d | tid=%d)"

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    return v2
.end method

.method public static a(Ljava/io/File;Ljava/io/File;I)Z
    .locals 6

    const-string p2, "ZF end"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ZF start"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "ZF failed"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_a

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "!dst.getParentFile().mkdirs(), pls check ,return!"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "!oFile.createNewFile()"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_9

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 p1, 0x8

    :try_start_3
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p0, 0x1388

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v3, p0, v0, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v1

    :goto_3
    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v3, v1

    :goto_4
    :try_start_6
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_8
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p0

    :cond_b
    :goto_9
    return v0

    :cond_c
    :goto_a
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "!sFile.exists() || !sFile.canRead(),pls check ,return!"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;ILcom/uqm/crashsight/crashreport/common/info/b;)Z
    .locals 8

    const-string p2, "[attach][zipAttachFile] ZF end"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[attach][zipAttachFile] ZF start"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "[attach] saveCodeMsg ..."

    const/4 v2, 0x2

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_a

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "[attach][zipAttachFile] !dst.getParentFile().mkdirs(), pls check ,return!"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p0, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p1, "[zipAttachFile] !dst.getParentFile().mkdirs(), pls check ,return!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_3

    const-string p0, "[attach][zipAttachFile] !oFile.createNewFile()"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p0, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string p1, "[zipAttachFile] !oFile.createNewFile()"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_9

    :cond_4
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p1, 0x8

    :try_start_3
    invoke-virtual {v5, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/high16 p0, 0x20000

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v4, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v5, p0, v0, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v5, v3

    :goto_3
    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v3

    :goto_4
    :try_start_6
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    iget-object p1, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "[zipAttachFile]2 "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {v1, p3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_5
    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p2, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :catchall_3
    move-exception p0

    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_8

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_8
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p0

    :cond_b
    :goto_9
    iget-object p0, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    const-string p1, "[zipAttachFile] !oFile.exists() || !oFile.canRead()"

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v0

    :catchall_4
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    iget-object p1, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[zipAttachFile]1 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p1, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v0

    :cond_d
    :goto_a
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "[attach][zipAttachFile] !sFile.exists() || !sFile.canRead(),pls check ,return!"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p0, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    const-string p1, "[zipAttachFile] !sFile.exists() || !sFile.canRead(),pls check ,return!"

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v0

    :cond_e
    :goto_b
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "[attach][zipAttachFile] sFile == null || oFile == null || sFile.equals(oFile)"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object p0, p3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v2, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    const-string p1, "[zipAttachFile] sFile == null || oFile == null || sFile.equals(oFile)"

    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)Z
    .locals 5

    const-string v0, "[attach] saveCopyError ..."

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "[attach][copyFile2] copyFile start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "[attach][copyFile2] src == null || dst == null || src.equals(dst)"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p0, "[copyFile2] src == null || dst == null || src.equals(dst)"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "[attach][copyFile2] !dst.getParentFile().mkdirs()"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p0, "[copyFile2] !dst.getParentFile().mkdirs()"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v2

    :cond_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0, p1, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const-string p0, "[attach][copyFile2] end"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v1

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_4
    :goto_1
    const-string p0, "[attach][copyFile2] !sFile.exists() || !sFile.canRead()"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p0, "[copyFile2] !sFile.exists() || !sFile.canRead()"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v2

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "[copyFile2] "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return v2
.end method

.method public static a(Ljava/lang/Runnable;)Z
    .locals 3

    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/os/Parcelable;)[B
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static a(Ljava/io/File;I)[B
    .locals 8

    const-string p1, "rqdp{  ZF end}"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Gzip"

    aput-object v3, v0, v2

    const-string v3, "[Util] Zip  file data with type %s"

    invoke-static {v3, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/proguard/v;

    invoke-direct {v0}, Lcom/uqm/crashsight/proguard/v;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const p0, 0xf4240

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p0, v4

    :goto_0
    new-array p0, p0, [B

    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-interface {v0, p0}, Lcom/uqm/crashsight/proguard/w;->a([B)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    :catchall_2
    move-exception p0

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p0

    :cond_5
    :goto_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, " !sFile.exists() || !sFile.canRead(),pls check ,return!"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static a(Ljava/io/File;JJLcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;)[B
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const/4 v3, 0x1

    const-string v4, "[attach] saveCodeMsg ..."

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-gez v2, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v7

    const-string p1, "[attach][readFileData2] len < 0: %d"

    invoke-static {p1, p0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v7, [Ljava/lang/Object;

    invoke-static {v4, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    const-string p0, "[readFileData2] len < 0"

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[attach][readFileData2] file not exists: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[readFileData2] file not exists:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return-object v6

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[attach][readFileData2] file can not read: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[readFileData2] file can not read: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return-object v6

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v2, v8, v0

    if-nez v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[attach][readFileData2] file length == 0: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[readFileData2] file length == 0: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    return-object v6

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v8, p1

    invoke-static {v8, v9, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    cmp-long v0, v8, v0

    if-gtz v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "[attach][readFileData2] read readLen < 0 %d"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-wide p3, v8

    :goto_0
    long-to-int p3, p3

    new-array p3, p3, [B

    :try_start_0
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string p0, "[attach][readFileData2] skip %d bytes"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p4, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {p4, p3}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    int-to-long p0, p0

    const-string p2, "[attach][readFileData2] read %d bytes"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v7

    invoke-static {p2, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-object p3

    :catch_0
    move-exception p0

    :try_start_4
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[readFileData2]2 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return-object v6

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p4, v6

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p4, v6

    :goto_3
    :try_start_6
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[readFileData2]1 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz p4, :cond_9

    :try_start_7
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-object v6

    :catchall_4
    move-exception p0

    :goto_5
    :try_start_8
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[readFileData2]3 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v5, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p0, p5, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz p4, :cond_b

    :try_start_9
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_6
    return-object v6

    :catchall_6
    move-exception p0

    if-eqz p4, :cond_c

    :try_start_a
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_7
    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "zipFileAndCacheToBytes start"

    invoke-static {v3, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "zipFileAndCacheToBytes finally end"

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    move-object p2, v0

    move-object v4, p2

    goto/16 :goto_6

    :cond_1
    move-object p0, v0

    :goto_0
    :try_start_2
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v5, 0x8

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p2, 0x400

    new-array p2, p2, [B

    if-eqz p0, :cond_2

    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, p2, v1, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4, p2, v1, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->finish()V

    const-string p2, "zipFileAndCacheToBytes normal end"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_4

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object p1

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    :goto_5
    move-object v4, v0

    :goto_6
    :try_start_6
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    if-eqz p2, :cond_6

    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :catchall_4
    move-exception p0

    if-eqz p2, :cond_8

    :try_start_9
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_9
    if-eqz v4, :cond_9

    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_a

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    throw p0

    :cond_a
    :goto_b
    return-object v0
.end method

.method public static a([BI)[B
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "Gzip"

    aput-object v1, p1, v0

    const-string v0, "[Util] Zip %d bytes data with type %s"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    new-instance p1, Lcom/uqm/crashsight/proguard/v;

    invoke-direct {p1}, Lcom/uqm/crashsight/proguard/v;-><init>()V

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/proguard/w;->a([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()J
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/u;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "NULL"

    return-object p0
.end method

.method public static b(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "keys"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "values"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1

    :cond_2
    const-string p0, "map parcel error!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static b(J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public static b(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "keys"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "values"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "[Util] Try to unlock file: %s (pid=%d | tid=%d)"

    invoke-static {v3, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[Util] Successfully unlocked file: %s (pid=%d | tid=%d)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :cond_0
    return v2

    :cond_1
    return v4

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    return v2
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b([BI)[B
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    array-length v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    const-string v2, "Gzip"

    aput-object v2, p1, v0

    const-string v0, "[Util] Unzip %d bytes data with type %s"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_0
    new-instance p1, Lcom/uqm/crashsight/proguard/v;

    invoke-direct {p1}, Lcom/uqm/crashsight/proguard/v;-><init>()V

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/proguard/w;->b([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not in GZIP format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([B)J
    .locals 4

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-wide v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "delete file failed [%s]"

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static c(J)[B
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s) is empty"

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s)\'s length is larger than 255."

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "URL(%s) is not start with \"http\"."

    invoke-static {p0, v0}, Lcom/uqm/crashsight/proguard/o;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_4
    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    :cond_0
    return-object p0
.end method
