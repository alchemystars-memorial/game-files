.class Lcom/linecorp/android/security/TLSSocketFactory$LoggingHandshakeCompletedListener;
.super Ljava/lang/Object;
.source "TLSSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/android/security/TLSSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingHandshakeCompletedListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 5

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "This is not Error."

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "TLSSocketFactory"

    const-string v4, "Handshake completed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Connected with: %s/%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "Peer name: %s\n"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
