.class final Lio/jsonwebtoken/lang/Classes$3;
.super Lio/jsonwebtoken/lang/Classes$ExceptionIgnoringAccessor;
.source "Classes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/jsonwebtoken/lang/Classes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/jsonwebtoken/lang/Classes$ExceptionIgnoringAccessor;-><init>(Lio/jsonwebtoken/lang/Classes$1;)V

    return-void
.end method


# virtual methods
.method protected doGetClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
