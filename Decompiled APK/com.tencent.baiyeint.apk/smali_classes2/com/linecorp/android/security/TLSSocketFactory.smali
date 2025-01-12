.class public Lcom/linecorp/android/security/TLSSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLSSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/android/security/TLSSocketFactory$DelegateSSLSocket;,
        Lcom/linecorp/android/security/TLSSocketFactory$NoSSLv3SSLSocket;,
        Lcom/linecorp/android/security/TLSSocketFactory$LoggingHandshakeCompletedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TLSSocketFactory"

.field private static final TLS12_ENABLED_API_LEVEL:I = 0x10

.field private static final UNSAFE_CIPHERS:[Ljava/lang/String;


# instance fields
.field private openSslSocketClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private removeUnsafeCiphers:Z

.field private setHostnameMethod:Ljava/lang/reflect/Method;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "RC4"

    const-string v1, "DES"

    const-string v2, "PSK"

    const-string v3, "_DHE_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linecorp/android/security/TLSSocketFactory;->UNSAFE_CIPHERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/linecorp/android/security/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-boolean p2, p0, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers:Z

    invoke-direct {p0}, Lcom/linecorp/android/security/TLSSocketFactory;->initSNI()V

    return-void
.end method

.method private static getProtocols()[Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const-string v0, "TLSv1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "TLSv1.2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initSNI()V
    .locals 5

    :try_start_0
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->openSslSocketClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->openSslSocketClass:Ljava/lang/Class;

    :goto_0
    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->openSslSocketClass:Ljava/lang/Class;

    const-string v1, "setHostname"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->setHostnameMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private static removeUnsafeCiphers([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    sget-object v5, Lcom/linecorp/android/security/TLSSocketFactory;->UNSAFE_CIPHERS:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->openSslSocketClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->setHostnameMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/android/security/TLSSocketFactory;->wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/linecorp/android/security/TLSSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/linecorp/android/security/TLSSocketFactory;->wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/linecorp/android/security/TLSSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/linecorp/android/security/TLSSocketFactory;->wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linecorp/android/security/TLSSocketFactory;->wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linecorp/android/security/TLSSocketFactory;->wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/linecorp/android/security/TLSSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linecorp/android/security/TLSSocketFactory;->wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrapSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Lcom/linecorp/android/security/TLSSocketFactory;->getProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/android/security/TLSSocketFactory;->removeUnsafeCiphers([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/linecorp/android/security/TLSSocketFactory$NoSSLv3SSLSocket;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/linecorp/android/security/TLSSocketFactory$NoSSLv3SSLSocket;-><init>(Ljavax/net/ssl/SSLSocket;Lcom/linecorp/android/security/TLSSocketFactory$1;)V

    move-object p1, v0

    :cond_1
    return-object p1
.end method
