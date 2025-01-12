.class final Lio/jsonwebtoken/impl/lang/Services$2;
.super Ljava/lang/Object;
.source "Services.java"

# interfaces
.implements Lio/jsonwebtoken/impl/lang/Services$ClassLoaderAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/jsonwebtoken/impl/lang/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    const-class v0, Lio/jsonwebtoken/impl/lang/Services;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
