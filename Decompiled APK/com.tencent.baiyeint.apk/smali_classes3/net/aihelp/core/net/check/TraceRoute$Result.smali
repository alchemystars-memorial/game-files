.class public Lnet/aihelp/core/net/check/TraceRoute$Result;
.super Ljava/lang/Object;
.source "TraceRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/check/TraceRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private allData:Ljava/lang/String;

.field private final builder:Ljava/lang/StringBuilder;

.field public final ip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute$Result;->builder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lnet/aihelp/core/net/check/TraceRoute$Result;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/check/TraceRoute$Result;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/check/TraceRoute$Result;->append(Ljava/lang/String;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute$Result;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute$Result;->allData:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute$Result;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/check/TraceRoute$Result;->allData:Ljava/lang/String;

    return-object v0
.end method
