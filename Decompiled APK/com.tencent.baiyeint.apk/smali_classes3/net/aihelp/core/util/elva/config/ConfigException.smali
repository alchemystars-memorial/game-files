.class public Lnet/aihelp/core/util/elva/config/ConfigException;
.super Ljava/lang/Exception;
.source "ConfigException.java"


# static fields
.field private static final serialVersionUID:J = 0x7L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Configuration failed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/util/elva/config/ConfigException;-><init>()V

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/config/ConfigException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/config/ConfigException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
