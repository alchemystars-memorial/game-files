.class final Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;
.super Ljava/lang/Object;
.source "OidcSecurityUtil.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/security/OidcSecurityUtil;->getRawKeyFromEndPoint(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOidcSecurityUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OidcSecurityUtil.kt\ncom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n1#2:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic $kid:Ljava/lang/String;

.field final synthetic $lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic $openIdKeyUrl:Ljava/net/URL;

.field final synthetic $result:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Ljava/net/URL;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$openIdKeyUrl:Ljava/net/URL;

    iput-object p2, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$kid:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p5, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$openIdKeyUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "connection.inputStream"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    const/16 v1, 0x2000

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_1

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v2

    :goto_0
    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v2, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$result:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$kid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v1, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v2, Lcom/facebook/internal/security/OidcSecurityUtil;->INSTANCE:Lcom/facebook/internal/security/OidcSecurityUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "Error getting public key"

    :goto_2
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v1, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v2, p0, Lcom/facebook/internal/security/OidcSecurityUtil$getRawKeyFromEndPoint$1;->$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :catchall_3
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
