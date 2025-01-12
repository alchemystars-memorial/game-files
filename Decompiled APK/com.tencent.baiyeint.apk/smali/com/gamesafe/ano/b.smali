.class public Lcom/gamesafe/ano/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 0

    invoke-static {p0}, Lcom/gamesafe/ano/AnoSdk;->hasMatchRate(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/gamesafe/ano/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "poa-8"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/gamesafe/ano/AnoSdk;->onruntimeinfo([BI)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "poa-8"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/gamesafe/ano/AnoSdk;->senddatatosvr([BI)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/gamesafe/ano/AnoSdk;->ioctl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
