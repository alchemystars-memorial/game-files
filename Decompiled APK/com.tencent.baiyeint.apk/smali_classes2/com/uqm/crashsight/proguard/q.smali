.class public Lcom/uqm/crashsight/proguard/q;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static i:Ljava/net/Proxy;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/q;->g:J

    iput-wide v0, p0, Lcom/uqm/crashsight/proguard/q;->h:J

    return-void
.end method

.method public static a()Ljava/net/Proxy;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/proguard/q;->i:Ljava/net/Proxy;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/uqm/crashsight/proguard/q;->i:Ljava/net/Proxy;

    return-void

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/q;->i:Ljava/net/Proxy;

    return-void
.end method

.method public static a(Ljava/net/InetAddress;I)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/uqm/crashsight/proguard/q;->i:Ljava/net/Proxy;

    return-void

    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/q;->i:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/q;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/q;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/q;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/q;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
