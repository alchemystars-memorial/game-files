.class final Lnet/aihelp/core/ui/image/LruCache$BitmapAndSize;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapAndSize"
.end annotation


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final byteCount:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/LruCache$BitmapAndSize;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lnet/aihelp/core/ui/image/LruCache$BitmapAndSize;->byteCount:I

    return-void
.end method
