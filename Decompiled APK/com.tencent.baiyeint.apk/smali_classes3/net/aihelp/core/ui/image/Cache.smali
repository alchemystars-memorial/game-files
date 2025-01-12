.class public interface abstract Lnet/aihelp/core/ui/image/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final NONE:Lnet/aihelp/core/ui/image/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/ui/image/Cache$1;

    invoke-direct {v0}, Lnet/aihelp/core/ui/image/Cache$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/Cache;->NONE:Lnet/aihelp/core/ui/image/Cache;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearKeyUri(Ljava/lang/String;)V
.end method

.method public abstract get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract maxSize()I
.end method

.method public abstract set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract size()I
.end method
