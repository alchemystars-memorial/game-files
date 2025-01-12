.class Lcom/linecorp/android/security/TLSSocketFactory$NoSSLv3SSLSocket;
.super Lcom/linecorp/android/security/TLSSocketFactory$DelegateSSLSocket;
.source "TLSSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/android/security/TLSSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoSSLv3SSLSocket"
.end annotation


# direct methods
.method private constructor <init>(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/android/security/TLSSocketFactory$DelegateSSLSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLSocket;Lcom/linecorp/android/security/TLSSocketFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/android/security/TLSSocketFactory$NoSSLv3SSLSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method


# virtual methods
.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v2, "SSLv3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/linecorp/android/security/TLSSocketFactory$NoSSLv3SSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :cond_1
    invoke-super {p0, p1}, Lcom/linecorp/android/security/TLSSocketFactory$DelegateSSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method
